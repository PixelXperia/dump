.class Lcom/android/settings/users/UserSettings$11;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/UserSettings;->onCreateDialogForAddUser(Landroid/content/Context;Z)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/UserSettings;

.field final synthetic val$isGuest:Z


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserSettings;Z)V
    .locals 0

    .line 766
    iput-object p1, p0, Lcom/android/settings/users/UserSettings$11;->this$0:Lcom/android/settings/users/UserSettings;

    iput-boolean p2, p0, Lcom/android/settings/users/UserSettings$11;->val$isGuest:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 769
    iget-boolean p1, p0, Lcom/android/settings/users/UserSettings$11;->val$isGuest:Z

    if-eqz p1, :cond_0

    .line 770
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$11;->this$0:Lcom/android/settings/users/UserSettings;

    const/16 p1, -0xb

    invoke-static {p0, p1}, Lcom/android/settings/users/UserSettings;->access$1400(Lcom/android/settings/users/UserSettings;I)V

    goto :goto_0

    .line 772
    :cond_0
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$11;->this$0:Lcom/android/settings/users/UserSettings;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/users/UserSettings;->access$800(Lcom/android/settings/users/UserSettings;I)V

    :goto_0
    return-void
.end method
