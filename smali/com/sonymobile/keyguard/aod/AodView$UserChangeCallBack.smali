.class public Lcom/sonymobile/keyguard/aod/AodView$UserChangeCallBack;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "AodView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/aod/AodView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UserChangeCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/aod/AodView;


# direct methods
.method protected constructor <init>(Lcom/sonymobile/keyguard/aod/AodView;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/AodView$UserChangeCallBack;->this$0:Lcom/sonymobile/keyguard/aod/AodView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 1

    .line 329
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/AodView$UserChangeCallBack;->this$0:Lcom/sonymobile/keyguard/aod/AodView;

    .line 330
    invoke-static {p0}, Lcom/sonymobile/keyguard/aod/AodView;->access$100(Lcom/sonymobile/keyguard/aod/AodView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->createKeyguardPluginFactoryForUser(ILandroid/content/Context;)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;

    move-result-object p1

    .line 329
    invoke-static {p0, p1}, Lcom/sonymobile/keyguard/aod/AodView;->access$002(Lcom/sonymobile/keyguard/aod/AodView;Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;

    return-void
.end method
