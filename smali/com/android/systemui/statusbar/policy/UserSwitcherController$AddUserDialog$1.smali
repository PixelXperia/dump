.class Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog$1;
.super Ljava/lang/Object;
.source "UserSwitcherController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;

.field final synthetic val$this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 0

    .line 925
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog$1;->this$1:Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog$1;->val$this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 928
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog$1;->this$1:Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->access$1300(Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;)V

    return-void
.end method
