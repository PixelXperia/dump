.class Lcom/android/settings/notification/ZenRuleSelectionDialog$1;
.super Ljava/lang/Object;
.source "ZenRuleSelectionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenRuleSelectionDialog;->bindType(Lcom/android/settings/notification/ZenRuleInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;

.field final synthetic val$ri:Lcom/android/settings/notification/ZenRuleInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenRuleSelectionDialog;Lcom/android/settings/notification/ZenRuleInfo;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$1;->this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;

    iput-object p2, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$1;->val$ri:Lcom/android/settings/notification/ZenRuleInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 141
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$1;->this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 142
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$1;->val$ri:Lcom/android/settings/notification/ZenRuleInfo;

    iget-boolean v0, p1, Lcom/android/settings/notification/ZenRuleInfo;->isSystem:Z

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->mPositiveClickListener:Lcom/android/settings/notification/ZenRuleSelectionDialog$PositiveClickListener;

    iget-object p0, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$1;->this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/android/settings/notification/ZenRuleSelectionDialog$PositiveClickListener;->onSystemRuleSelected(Lcom/android/settings/notification/ZenRuleInfo;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 145
    :cond_0
    sget-object v0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->mPositiveClickListener:Lcom/android/settings/notification/ZenRuleSelectionDialog$PositiveClickListener;

    iget-object p0, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$1;->this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/android/settings/notification/ZenRuleSelectionDialog$PositiveClickListener;->onExternalRuleSelected(Lcom/android/settings/notification/ZenRuleInfo;Landroidx/fragment/app/Fragment;)V

    :goto_0
    return-void
.end method
