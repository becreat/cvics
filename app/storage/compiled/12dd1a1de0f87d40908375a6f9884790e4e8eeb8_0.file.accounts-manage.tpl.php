<?php
/* Smarty version 3.1.33, created on 2021-06-20 22:04:54
  from '/home/cvics/public_html/app/ui/theme/default/accounts-manage.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_60cf67268f11d8_86078883',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '12dd1a1de0f87d40908375a6f9884790e4e8eeb8' => 
    array (
      0 => '/home/cvics/public_html/app/ui/theme/default/accounts-manage.tpl',
      1 => 1560050722,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_60cf67268f11d8_86078883 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_28751355760cf67268c7995_64356765', "content");
?>



<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_3816769960cf67268f03c7_82521567', "script");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "content"} */
class Block_28751355760cf67268c7995_64356765 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_28751355760cf67268c7995_64356765',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="row">
        <div class="col-md-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5><?php echo $_smarty_tpl->tpl_vars['_L']->value['Manage_Accounts'];?>
</h5>

                </div>
                <div class="ibox-content">

                    <table class="table table-striped table-bordered">
                        <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Account'];?>
</th>
                        <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Balance'];?>
</th>
                        <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Manage'];?>
</th>


                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['balances']->value['banks'], 'bank');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['bank']->value) {
?>

                            <tr>
                                <td>
                                    <h4><?php echo $_smarty_tpl->tpl_vars['bank']->value->account;?>
</h4>
                                </td>
                                <td>
                                    <?php if ((isset($_smarty_tpl->tpl_vars['balances']->value['balances'][$_smarty_tpl->tpl_vars['bank']->value->id]))) {?>



                                        <strong><?php echo $_smarty_tpl->tpl_vars['_L']->value['Equity'];?>
 (Initial balance): <?php echo formatCurrency($_smarty_tpl->tpl_vars['balances']->value['total_equity_bank'][$_smarty_tpl->tpl_vars['bank']->value->id],$_smarty_tpl->tpl_vars['balances']->value['home_currency']->iso_code);?>
</strong> <br>
                                        <strong><?php echo $_smarty_tpl->tpl_vars['_L']->value['Total in'];?>
: <?php echo formatCurrency($_smarty_tpl->tpl_vars['balances']->value['total_in_bank'][$_smarty_tpl->tpl_vars['bank']->value->id],$_smarty_tpl->tpl_vars['balances']->value['home_currency']->iso_code);?>
 </strong>  <br>
                                        <strong><?php echo $_smarty_tpl->tpl_vars['_L']->value['Total out'];?>
: <?php echo formatCurrency($_smarty_tpl->tpl_vars['balances']->value['total_out_bank'][$_smarty_tpl->tpl_vars['bank']->value->id],$_smarty_tpl->tpl_vars['balances']->value['home_currency']->iso_code);?>
 </strong>  <br>

                                        <hr>

                                        <strong> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Balance'];?>
 (in home currency) : <?php echo formatCurrency($_smarty_tpl->tpl_vars['balances']->value['balances'][$_smarty_tpl->tpl_vars['bank']->value->id],$_smarty_tpl->tpl_vars['balances']->value['home_currency']->iso_code);?>
</strong>

                                    <?php }?>
                                </td>
                                <td>


                                    <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
accounts/add-equity/<?php echo $_smarty_tpl->tpl_vars['bank']->value->id;?>
" class="btn btn-xs btn-primary"><i class="fa fa-plus"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Record initial balance'];?>
</a>

                                    <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
accounts/edit/<?php echo $_smarty_tpl->tpl_vars['bank']->value->id;?>
" class="btn btn-xs btn-warning"><i class="fa fa-pencil"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Edit'];?>
</a>

                                    <?php ob_start();
echo $_smarty_tpl->tpl_vars['bank']->value->ib_url;
$_prefixVariable1 = ob_get_clean();
if ($_prefixVariable1 != '') {?>
                                        <a href="<?php echo $_smarty_tpl->tpl_vars['bank']->value->ib_url;?>
" target="_blank" class="btn btn-xs btn-primary"><i class="fa fa-globe"></i></a>
                                    <?php }?>

                                    <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
accounts/delete/<?php echo $_smarty_tpl->tpl_vars['bank']->value->id;?>
" id="did<?php echo $_smarty_tpl->tpl_vars['bank']->value->id;?>
" class="cdelete btn btn-danger btn-xs"><i class="fa fa-trash"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Delete'];?>
</a>


                                </td>
                            </tr>

                        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>




                    </table>

                    <div class="hr-line-dashed"></div>

                    <h3><?php echo $_smarty_tpl->tpl_vars['_L']->value['Net Worth'];?>
 - <?php echo formatCurrency($_smarty_tpl->tpl_vars['balances']->value['net_worth'],$_smarty_tpl->tpl_vars['balances']->value['home_currency']->iso_code);?>
</h3>

                </div>
            </div>



        </div>



    </div>


    <input type="hidden" id="_lan_are_you_sure" value="<?php echo $_smarty_tpl->tpl_vars['_L']->value['are_you_sure'];?>
">


<?php
}
}
/* {/block "content"} */
/* {block "script"} */
class Block_3816769960cf67268f03c7_82521567 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_3816769960cf67268f03c7_82521567',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <?php echo '<script'; ?>
>
        $(function () {
            $(".cdelete").click(function (e) {
                e.preventDefault();
                var id = this.id;
                var lan_msg = $("#_lan_are_you_sure").val();
                bootbox.confirm(lan_msg, function(result) {
                    if(result){
                        var _url = $("#_url").val();
                        window.location.href = _url + "accounts/delete/" + id + '/';
                    }
                });
            });
        })
    <?php echo '</script'; ?>
>


<?php
}
}
/* {/block "script"} */
}
