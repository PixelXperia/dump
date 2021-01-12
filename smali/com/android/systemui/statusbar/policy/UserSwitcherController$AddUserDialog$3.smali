.class Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog$3;
.super Ljava/lang/Object;
.source "UserSwitcherController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;)V
    .locals 0

    .line 955
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog$3;->this$1:Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 2

    .line 958
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog$3;->this$1:Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->access$1400(Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog$3;->this$1:Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 960
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog$3;->this$1:Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->access$1300(Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;)V

    :cond_0
    return-void
.end method
