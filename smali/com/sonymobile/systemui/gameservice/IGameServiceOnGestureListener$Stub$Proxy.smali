.class Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGameServiceOnGestureListener.java"

# interfaces
.implements Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public onGameButtonDoubleTap()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.sonymobile.systemui.gameservice.IGameServiceOnGestureListener"

    .line 135
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 136
    iget-object p0, p0, Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 137
    invoke-static {}, Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener$Stub;->getDefaultImpl()Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 138
    invoke-static {}, Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener$Stub;->getDefaultImpl()Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener;->onGameButtonDoubleTap()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onGameButtonLongPress()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.sonymobile.systemui.gameservice.IGameServiceOnGestureListener"

    .line 153
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 154
    iget-object p0, p0, Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 155
    invoke-static {}, Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener$Stub;->getDefaultImpl()Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 156
    invoke-static {}, Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener$Stub;->getDefaultImpl()Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener;->onGameButtonLongPress()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onGameButtonSingleTap()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.sonymobile.systemui.gameservice.IGameServiceOnGestureListener"

    .line 117
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 118
    iget-object p0, p0, Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 119
    invoke-static {}, Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener$Stub;->getDefaultImpl()Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 120
    invoke-static {}, Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener$Stub;->getDefaultImpl()Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener;->onGameButtonSingleTap()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
