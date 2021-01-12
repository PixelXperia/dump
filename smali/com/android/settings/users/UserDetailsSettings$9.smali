.class Lcom/android/settings/users/UserDetailsSettings$9;
.super Ljava/lang/Object;
.source "UserDetailsSettings.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/UserDetailsSettings;->initializeAllowCallsSmsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/UserDetailsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserDetailsSettings;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings$9;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings$9;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    invoke-static {v0}, Lcom/android/settings/users/UserDetailsSettings;->access$100(Lcom/android/settings/users/UserDetailsSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings$9;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    invoke-static {v0}, Lcom/android/settings/users/UserDetailsSettings;->access$200(Lcom/android/settings/users/UserDetailsSettings;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    .line 341
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 342
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings$9;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    invoke-static {v0, v1}, Lcom/android/settings/users/UserDetailsSettings;->access$302(Lcom/android/settings/users/UserDetailsSettings;Z)Z

    .line 343
    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings$9;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    invoke-static {p0}, Lcom/android/settings/users/UserDetailsSettings;->access$400(Lcom/android/settings/users/UserDetailsSettings;)V

    :cond_0
    return-void
.end method
