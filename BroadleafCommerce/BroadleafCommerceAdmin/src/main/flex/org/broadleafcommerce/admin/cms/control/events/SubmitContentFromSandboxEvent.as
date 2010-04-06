/*
 * Copyright 2008-2009 the original author or authors.
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
package org.broadleafcommerce.admin.cms.control.events
{
	import com.adobe.cairngorm.control.CairngormEvent;

	import mx.collections.ArrayCollection;

	public class SubmitContentFromSandboxEvent extends CairngormEvent
	{
		public static const EVENT_SUBMIT_CONTENT_FROM_SANDBOX:String = "submit_content_from_sandbox_event";
		public var sandbox:String;
		public var contentIds:ArrayCollection;
		public var username:String;
		public var tabName:String;
		public var note:String;

		public function SubmitContentFromSandboxEvent(tabName:String, contentIds:ArrayCollection, sandbox:String, username:String, note:String)
		{
			super(EVENT_SUBMIT_CONTENT_FROM_SANDBOX);
			this.tabName = tabName;
			this.sandbox = sandbox;
			this.contentIds = contentIds;
			this.username = username;
			this.note = note;
		}

	}
}