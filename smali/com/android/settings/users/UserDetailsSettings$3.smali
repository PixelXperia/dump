.class Lcom/android/settings/users/UserDetailsSettings$3;
.super Ljava/lang/Object;
.source "UserDetailsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/UserDetailsSettings;->onCreateDialog(I)Landroid/app/Dialog;
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

    .line 238
    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings$3;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings$3;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    invoke-static {p0}, Lcom/android/settings/users/UserDetailsSettings;->access$000(Lcom/android/settings/users/UserDetailsSettings;)V

    return-void
.end method
