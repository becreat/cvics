<?php
/* Smarty version 3.1.33, created on 2021-06-20 23:53:14
  from '/home/cvics/public_html/app/ui/theme/default/payments.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_60cf808a620fa4_03761360',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '16035822221e5da5fbdfa4fcdda980ad5de00a4d' => 
    array (
      0 => '/home/cvics/public_html/app/ui/theme/default/payments.tpl',
      1 => 1560050722,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_60cf808a620fa4_03761360 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_98575089060cf808a600d36_23709023', "content");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "content"} */
class Block_98575089060cf808a600d36_23709023 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_98575089060cf808a600d36_23709023',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <div class="row">
        <div class="col-md-12">
            <h3 class="ibilling-page-header"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Payments'];?>
</h3>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5><?php echo $_smarty_tpl->tpl_vars['_L']->value['Payments'];?>
</h5>

                </div>
                <div class="ibox-content">
                    <div class="table-responsive">
                        <form class="form-horizontal" method="post" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
customers/list/">
                            <div class="form-group">
                                <div class="col-md-12">
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <span class="fa fa-search"></span>
                                        </div>
                                        <input type="text" name="name" id="foo_filter" class="form-control" placeholder="<?php echo $_smarty_tpl->tpl_vars['_L']->value['Search'];?>
..."/>

                                    </div>
                                </div>

                            </div>
                        </form>
                        <table class="table table-bordered sys_table footable" data-filter="#foo_filter" data-page-size="50">
                            <thead>
                            <tr>
                                <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Invoice'];?>
#</th>
                                <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Date'];?>
</th>
                                <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Account'];?>
</th>


                                <th class="text-right"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Amount'];?>
</th>

                                <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Transaction ID'];?>
</th>

                                <th class="text-right"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Cr'];?>
</th>
                                <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Manage'];?>
</th>
                            </tr>

                            </thead>

                            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['d']->value, 'ds');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['ds']->value) {
?>
                                <tr class="<?php if ($_smarty_tpl->tpl_vars['ds']->value['cr'] == '0.00') {?>warning <?php } else { ?>info<?php }?>">
                                    <td><?php echo $_smarty_tpl->tpl_vars['ds']->value['iid'];?>
</td>
                                    <td><?php echo date($_smarty_tpl->tpl_vars['config']->value['df'],strtotime($_smarty_tpl->tpl_vars['ds']->value['date']));?>
</td>
                                    <td><?php echo $_smarty_tpl->tpl_vars['ds']->value['account'];?>
</td>
                                    <td class="text-right amount"><?php echo $_smarty_tpl->tpl_vars['ds']->value['amount'];?>
</td>
                                    <td><?php echo $_smarty_tpl->tpl_vars['ds']->value['description'];?>
</td>
                                    <td class="text-right amount"><?php echo $_smarty_tpl->tpl_vars['ds']->value['cr'];?>
</td>
                                    <td><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
transactions/manage/<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Manage'];?>
</a></td>
                                </tr>
                            <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

                            <tfoot>
                            <tr>
                                <td colspan="8">
                                    <ul class="pagination">
                                    </ul>
                                </td>
                            </tr>
                            </tfoot>

                        </table>
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
