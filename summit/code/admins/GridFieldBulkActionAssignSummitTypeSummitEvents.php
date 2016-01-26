<?php

/**
 * Copyright 2015 OpenStack Foundation
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * http://www.apache.org/licenses/LICENSE-2.0
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/
class GridFieldBulkActionAssignSummitTypeSummitEvents extends GridFieldBulkAction
{

    protected function getEntities()
    {
        $summit_id = intval(Controller::curr()->getRequest()->param('ID'));
        return SummitType::get()->filter('SummitID', $summit_id)->map('ID', 'Title');
    }

    protected function processRecordIds(array $ids, $entity_id)
    {
       foreach($ids as $id)
       {
           $event = SummitEvent::get()->byID($id);
           if(is_null($event)) continue;
           $event->AllowedSummitTypes()->add($entity_id);
       }
    }
}