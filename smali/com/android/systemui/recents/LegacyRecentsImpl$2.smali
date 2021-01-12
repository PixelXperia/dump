.class Lcom/android/systemui/recents/LegacyRecentsImpl$2;
.super Ljava/lang/Object;
.source "LegacyRecentsImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/LegacyRecentsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/LegacyRecentsImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/LegacyRecentsImpl;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/android/systemui/recents/LegacyRecentsImpl$2;->this$0:Lcom/android/systemui/recents/LegacyRecentsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    if-eqz p2, :cond_0

    .line 137
    iget-object p1, p0, Lcom/android/systemui/recents/LegacyRecentsImpl$2;->this$0:Lcom/android/systemui/recents/LegacyRecentsImpl;

    invoke-static {p2}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/recents/LegacyRecentsImpl;->access$002(Lcom/android/systemui/recents/LegacyRecentsImpl;Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;)Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    const p1, 0x8cdc

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 140
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    .line 141
    invoke-static {}, Lcom/android/systemui/recents/LegacyRecentsImpl;->access$100()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    .line 139
    invoke-static {p1, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 145
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/recents/LegacyRecentsImpl$2;->this$0:Lcom/android/systemui/recents/LegacyRecentsImpl;

    invoke-static {p1}, Lcom/android/systemui/recents/LegacyRecentsImpl;->access$400(Lcom/android/systemui/recents/LegacyRecentsImpl;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p1

    invoke-interface {p2, p1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Recents"

    const-string v0, "Lost connection to (System) SystemUI"

    .line 147
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/recents/LegacyRecentsImpl$2;->this$0:Lcom/android/systemui/recents/LegacyRecentsImpl;

    invoke-static {p1}, Lcom/android/systemui/recents/LegacyRecentsImpl;->access$500(Lcom/android/systemui/recents/LegacyRecentsImpl;)V

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/recents/LegacyRecentsImpl$2;->this$0:Lcom/android/systemui/recents/LegacyRecentsImpl;

    invoke-static {p1}, Lcom/android/systemui/recents/LegacyRecentsImpl;->access$600(Lcom/android/systemui/recents/LegacyRecentsImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
