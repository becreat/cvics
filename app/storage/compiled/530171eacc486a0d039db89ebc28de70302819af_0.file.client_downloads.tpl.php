<?php
/* Smarty version 3.1.33, created on 2021-06-28 01:22:34
  from '/home/cvics/public_html/app/ui/theme/default/client_downloads.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_60d8b3dacb1385_04818196',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '530171eacc486a0d039db89ebc28de70302819af' => 
    array (
      0 => '/home/cvics/public_html/app/ui/theme/default/client_downloads.tpl',
      1 => 1560050722,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_60d8b3dacb1385_04818196 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_53911984060d8b3dac9c472_86166839', "content");
$_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_client']->value));
}
/* {block "content"} */
class Block_53911984060d8b3dac9c472_86166839 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_53911984060d8b3dac9c472_86166839',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>



    <div class="row">
        <div class="col-md-12">
            <h3 class="ibilling-page-header"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Files'];?>
</h3>
        </div>
    </div>


    <div class="row">
        <div class="col-md-12">
            <div class="tabs-container">
                <ul class="nav nav-tabs">
                    <li class="active"><a class="nav-link active show" href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
client/downloads"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Downloads'];?>
</a></li>
                    <li><a class="nav-link" href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
client/uploads"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Uploads'];?>
</a></li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active show">
                        <div class="panel-body panel-body-with-border">



                            <div class="row">
                                <div class="col-lg-12">

                                    <?php if (count($_smarty_tpl->tpl_vars['d']->value) > 0) {?>

                                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['d']->value, 'ds');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['ds']->value) {
?>

                                            <div class="file-box">
                                                <div class="file">
                                                    <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
client/dl/<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
_<?php echo $_smarty_tpl->tpl_vars['ds']->value['file_dl_token'];?>
/">
                                                        <span class="corner"></span>

                                                        <div class="icon">
                                                            <?php if ($_smarty_tpl->tpl_vars['ds']->value['file_mime_type'] == 'jpg' || $_smarty_tpl->tpl_vars['ds']->value['file_mime_type'] == 'png' || $_smarty_tpl->tpl_vars['ds']->value['file_mime_type'] == 'gif') {?>
                                                                <i class="fa fa-file-image-o"></i>
                                                            <?php } elseif ($_smarty_tpl->tpl_vars['ds']->value['file_mime_type'] == 'pdf') {?>
                                                                <i class="fa fa-file-pdf-o"></i>
                                                            <?php } elseif ($_smarty_tpl->tpl_vars['ds']->value['file_mime_type'] == 'zip') {?>
                                                                <i class="fa fa-file-archive-o"></i>
                                                            <?php } else { ?>
                                                                <i class="fa fa-file"></i>
                                                            <?php }?>
                                                        </div>
                                                        <div class="file-name">
                                                            <?php echo $_smarty_tpl->tpl_vars['ds']->value['title'];?>

                                                            <br/>
                                                            <small>
                                                                <?php if ((isset($_smarty_tpl->tpl_vars['ds']->value['updated_at']) && ($_smarty_tpl->tpl_vars['ds']->value['updated_at']) != '')) {?>
                                                                    <?php echo date($_smarty_tpl->tpl_vars['config']->value['df'],strtotime($_smarty_tpl->tpl_vars['ds']->value['updated_at']));?>

                                                                <?php } else { ?>
                                                                    <?php echo date($_smarty_tpl->tpl_vars['config']->value['df'],strtotime($_smarty_tpl->tpl_vars['ds']->value['created_at']));?>

                                                                <?php }?>

                                                            </small>
                                                        </div>
                                                    </a>
                                                </div>

                                            </div>

                                        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

                                        <?php } else { ?>
                                        <?php echo $_smarty_tpl->tpl_vars['_L']->value['No Data Available'];?>

                                    <?php }?>






                                </div>
                            </div>



                        </div>
                    </div>

                </div>


            </div>
        </div>
    </div>




<?php
}
}
/* {/block "content"} */
}
