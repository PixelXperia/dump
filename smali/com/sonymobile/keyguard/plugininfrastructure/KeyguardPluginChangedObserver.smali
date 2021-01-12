.class public Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginChangedObserver;
.super Landroid/database/ContentObserver;
.source "KeyguardPluginChangedObserver.java"


# instance fields
.field private final mWeakKeyguardUpdateMonitor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 41
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginChangedObserver;->mWeakKeyguardUpdateMonitor:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 69
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginChangedObserver;->mWeakKeyguardUpdateMonitor:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz p0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onUserClockChanged()V

    :cond_0
    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 81
    invoke-virtual {p0, p1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginChangedObserver;->onChange(Z)V

    return-void
.end method

.method public final registerForUser(Landroid/content/Context;I)V
    .locals 2

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 55
    new-instance v0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;

    invoke-direct {v0, p1, p2}, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;-><init>(Landroid/content/ContentResolver;I)V

    .line 57
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 59
    invoke-interface {v0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;->getExplicitlySelectedKeyguardPluginValueUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    .line 58
    invoke-virtual {p1, v0, v1, p0, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_0
    return-void
.end method
