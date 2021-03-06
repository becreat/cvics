<?php
/* Smarty version 3.1.33, created on 2021-06-20 15:24:11
  from '/home/cvics/public_html/app/ui/theme/default/email-templates.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_60cf093ba40ab0_02726820',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '333c5c73d3f5b0d7f27e26121322d62600dfa05e' => 
    array (
      0 => '/home/cvics/public_html/app/ui/theme/default/email-templates.tpl',
      1 => 1560050722,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_60cf093ba40ab0_02726820 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_141668107260cf093ba1f830_06922708', "content");
$_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "content"} */
class Block_141668107260cf093ba1f830_06922708 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_141668107260cf093ba1f830_06922708',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <a href="#" id="add_new_template" class="btn btn-primary"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Add New Template'];?>
</a>
                </div>
            </div>
        </div>

        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="ib-search-bar " style="padding: 0">
                        <div class="input-group">
                            <input type="text" class="form-control" id="ib_search_input" placeholder="<?php echo $_smarty_tpl->tpl_vars['_L']->value['Search'];?>
..." autofocus> </div>
                    </div>
                </div>
            </div>
        </div>

    </div>


    <div class="row">

        <div class="col-lg-12">
            <div class="mail-box-header">


                <h3>
                    <?php echo $_smarty_tpl->tpl_vars['_L']->value['Email Templates'];?>

                </h3>

            </div>
            <div class="mail-box" id="application_ajaxrender">

                <table class="table table-hover table-mail filter-table" id="tbl_email_templates">
                    <tbody>


                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['d']->value, 'ds');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['ds']->value) {
?>
                        <tr class="read">

                            <td><a  class="ve" id="f<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
" href="#"><?php echo ib_lan_get_line($_smarty_tpl->tpl_vars['ds']->value['tplname']);?>
</a>  </td>
                            <td><a  class="ve" id="s<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
" href="#"><?php echo $_smarty_tpl->tpl_vars['ds']->value['subject'];?>
</a></td>
                            <td class=""></td>
                            <td class="text-right">
                                <?php if ($_smarty_tpl->tpl_vars['ds']->value['send'] == 'Yes') {?>
                                    <span class="label label-success"> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Active'];?>
 </span>
                                <?php } else { ?>
                                    <span class="label label-danger"> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Inactive'];?>
 </span>
                                <?php }?>
                                &nbsp;
                                <?php if ($_smarty_tpl->tpl_vars['ds']->value['core'] == 'Yes') {?>
                                    <span class="label label-warning"> <?php echo $_smarty_tpl->tpl_vars['_L']->value['System'];?>
 </span>
                                <?php } else { ?>
                                    <span class="label label-info"> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Custom'];?>
 </span>
                                <?php }?>

                            </td>

                            <td class="text-right">

                                <a href="javascript:void(0)" class="btn btn-primary btn-xs ve" id="b<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
" data-toggle="tooltip" data-placement="top" title="<?php echo $_smarty_tpl->tpl_vars['_L']->value['View'];?>
"><i class="fa fa-file-text-o"></i></a>
                                <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
settings/clone_email_template/<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
/" class="btn btn-success btn-xs" data-toggle="tooltip" data-placement="top" title="<?php echo $_smarty_tpl->tpl_vars['_L']->value['Clone'];?>
"><i class="fa fa-files-o"></i></a>


                                <?php if ($_smarty_tpl->tpl_vars['ds']->value['core'] != 'Yes') {?>
                                    <a href="javascript:void(0)" class="btn btn-danger btn-xs cdelete" id="ed<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
" data-toggle="tooltip" data-placement="top" title="<?php echo $_smarty_tpl->tpl_vars['_L']->value['Delete'];?>
"><i class="fa fa-trash"></i></a>
                                <?php }?>

                            </td>

                        </tr>
                    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

                    </tbody>
                </table>


            </div>
        </div>
    </div>
<?php
}
}
/* {/block "content"} */
}
