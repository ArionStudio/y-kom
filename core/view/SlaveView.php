<?php

    class SlaveView{
        function showSlave($id, $fname, $sname, $email, $idprem){?>
            <div class="slave pro__list">
                <span><?php echo $id; ?></span>
                <span><?php echo $fname; ?></span>
                <span><?php echo $sname; ?></span>
                <span><?php echo $email; ?></span>
                <span><?php echo $idprem; ?></span>
                
                <span class="function">
                    <a href="/admin/page/slaveEdit/<?php echo $id;?>/" alt="edytuj">
                        <svg fill="#505050" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <g id="la:user-edit">
                                <path id="trash1" d="M6.5 1.5C4.5725 1.5 3 3.0725 3 5C3 6.205 3.615 7.275 4.547 7.9065C2.7635 8.6715 1.5 10.4415 1.5 12.5H2.5C2.5 10.285 4.285 8.5 6.5 8.5C7.5725 8.5 8.5315 8.9395 9.25 9.625L6.8905 11.9845L6.8595 12.1405L6.5155 13.9065L6.3595 14.6405L7.094 14.4845L8.859 14.1405L9.0155 14.1095L14.0625 9.0625C14.6425 8.4825 14.6425 7.5175 14.0625 6.9375C13.7826 6.65986 13.4051 6.50279 13.0109 6.49989C12.6167 6.497 12.237 6.6485 11.953 6.922L9.969 8.9065C9.52823 8.48432 9.0146 8.14551 8.453 7.9065C8.92874 7.58534 9.31852 7.15247 9.58821 6.64577C9.85791 6.13908 9.99929 5.574 10 5C10 3.0725 8.4275 1.5 6.5 1.5ZM6.5 2.5C7.8865 2.5 9 3.6135 9 5C9 6.3865 7.8865 7.5 6.5 7.5C5.1135 7.5 4 6.3865 4 5C4 3.6135 5.1135 2.5 6.5 2.5ZM13 7.5C13.127 7.5 13.26 7.541 13.3595 7.6405C13.4067 7.68606 13.4443 7.74067 13.4699 7.80106C13.4955 7.86145 13.5088 7.92639 13.5088 7.992C13.5088 8.05761 13.4955 8.12255 13.4699 8.18294C13.4443 8.24333 13.4067 8.29794 13.3595 8.3435L8.5155 13.1875L7.625 13.375L7.8125 12.4845L12.6565 7.6405C12.756 7.541 12.873 7.5 13 7.5Z"/>
                            </g>
                        </svg>
                    </a>
                    <a href="/admin/fun/slaveDel/<?php echo $id;?>/" alt="usuń">
                        <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                            <g fill="#505050" fill-rule="evenodd">
                                <path id="trash1" d="M8 7v12h8V7H8zM7 6h10v14H7V6z" fill-rule="nonzero"></path>
                                <path id="trash2" d="M10 5v1h4V5h-4zM9 4h6v3H9V4z" fill-rule="nonzero"></path>
                                <path id="trash3" d="M10 9h1v7h-1zM13 9h1v7h-1zM6 6h12v1H6z"></path>
                            </g>
                        </svg>
                    </a>
                </span>
            </div>
    <?php
        }
        public function showAllSlaves($array){ ?>
            <div class="slave pro__list">
                <span>Id</span>
                <span>Imię</span>
                <span>Nazwisko</span>
                <span>Email</span>
                <span>Premision</span>
                <span>Opcje</span>
            </div>

        <?php
            
            foreach($array as $value){
                $this->showSlave($value[1], $value[2], $value[3], $value[4], $value[6]);
            }
        }
    }