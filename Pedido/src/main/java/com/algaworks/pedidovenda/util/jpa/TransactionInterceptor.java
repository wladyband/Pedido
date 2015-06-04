package com.algaworks.pedidovenda.util.jpa;

import java.io.Serializable;

import javax.inject.Inject;
import javax.interceptor.AroundInvoke;
import javax.interceptor.Interceptor;
import javax.interceptor.InvocationContext;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

@Interceptor
@Transactional
public class TransactionInterceptor implements Serializable {

	private static final long serialVersionUID = 1L;

	@Inject
	private EntityManager manager;

	@AroundInvoke
	public Object invoke(InvocationContext context) throws Exception {

		EntityTransaction trx = manager.getTransaction();
		boolean creador = false;

		try {

			if (!trx.isActive()) {
				trx.begin();
				trx.rollback();
				trx.begin();

				creador = true;
			}
			return context.proceed();
		} catch (Exception e) {
			if (trx != null && creador) {
				trx.rollback();

			}
			throw e;
		} finally {
			if (trx != null && trx.isActive() && creador) {
				trx.commit();
			}
		}

	}

}
