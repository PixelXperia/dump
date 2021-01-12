.class Lcom/android/settings/users/UserSettings$18;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/UserSettings;->initializeAddUserDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    .line 1374
    iput-object p1, p0, Lcom/android/settings/users/UserSettings$18;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 2

    .line 1377
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$18;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v0}, Lcom/android/settings/users/UserSettings;->access$2200(Lcom/android/settings/users/UserSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1378
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$18;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v0}, Lcom/android/settings/users/UserSettings;->access$2300(Lcom/android/settings/users/UserSettings;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    .line 1379
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1380
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$18;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v0, v1}, Lcom/android/settings/users/UserSettings;->access$2402(Lcom/android/settings/users/UserSettings;Z)Z

    .line 1381
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$18;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {p0}, Lcom/android/settings/users/UserSettings;->access$2500(Lcom/android/settings/users/UserSettings;)V

    :cond_0
    return-void
.end method
