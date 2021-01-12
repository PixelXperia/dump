.class final Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$BluetoothA2dpServiceListener;
.super Ljava/lang/Object;
.source "DevelopmentSettingsDashboardFragment.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BluetoothA2dpServiceListener"
.end annotation


# instance fields
.field final mDevelopmentSettings:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$BluetoothA2dpServiceListener;->mDevelopmentSettings:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    .line 126
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$BluetoothA2dpServiceListener;->mDevelopmentSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    if-eqz p0, :cond_1

    .line 128
    invoke-static {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->access$100(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Lcom/android/settings/development/BluetoothA2dpConfigStore;

    move-result-object p1

    monitor-enter p1

    .line 129
    :try_start_0
    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {p0, p2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->access$202(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 130
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-static {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->access$000(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 132
    instance-of v0, p2, Lcom/android/settings/development/BluetoothServiceConnectionListener;

    if-eqz v0, :cond_0

    .line 133
    check-cast p2, Lcom/android/settings/development/BluetoothServiceConnectionListener;

    .line 134
    invoke-static {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->access$200(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/development/BluetoothServiceConnectionListener;->onBluetoothServiceConnected(Landroid/bluetooth/BluetoothA2dp;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 130
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    .line 142
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$BluetoothA2dpServiceListener;->mDevelopmentSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    if-eqz p0, :cond_1

    .line 144
    invoke-static {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->access$100(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Lcom/android/settings/development/BluetoothA2dpConfigStore;

    move-result-object p1

    monitor-enter p1

    const/4 v0, 0x0

    .line 145
    :try_start_0
    invoke-static {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->access$202(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 146
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    invoke-static {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->access$000(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 148
    instance-of v0, p1, Lcom/android/settings/development/BluetoothServiceConnectionListener;

    if-eqz v0, :cond_0

    .line 149
    check-cast p1, Lcom/android/settings/development/BluetoothServiceConnectionListener;

    .line 150
    invoke-interface {p1}, Lcom/android/settings/development/BluetoothServiceConnectionListener;->onBluetoothServiceDisconnected()V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 146
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    return-void
.end method
