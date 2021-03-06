/**
 * Copyright (c) 2015-2016, Chill Zhuang 庄骞 (smallchill@163.com).
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package ikkong.core.intercept;

import ikkong.core.aop.AopContext;
import ikkong.core.interfaces.IQuery;


/**
 * 通用查询拦截器工厂类
 */
public class QueryInterceptor implements IQuery{

	@Override
	public void queryBefore(AopContext ac) {
		
	}

	@Override
	public void queryAfter(AopContext ac) {
		
	}

}
