.class Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISkinningBridgeEndpoint.java"

# interfaces
.implements Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public registerEndpoint(Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sonymobile.runtimeskinning.ISkinningBridgeEndpoint"

    .line 173
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 174
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 175
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 176
    invoke-static {}, Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint$Stub;->getDefaultImpl()Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 177
    invoke-static {}, Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint$Stub;->getDefaultImpl()Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;->registerEndpoint(Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 180
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 183
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public transfer(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.sonymobile.runtimeskinning.ISkinningBridgeEndpoint"

    .line 197
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 199
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 200
    invoke-static {}, Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint$Stub;->getDefaultImpl()Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 201
    invoke-static {}, Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint$Stub;->getDefaultImpl()Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;->transfer(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
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

.method public useVersion(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sonymobile.runtimeskinning.ISkinningBridgeEndpoint"

    .line 146
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 149
    invoke-static {}, Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint$Stub;->getDefaultImpl()Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 150
    invoke-static {}, Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint$Stub;->getDefaultImpl()Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;->useVersion(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 152
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 153
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    move v2, v3

    .line 156
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p0

    .line 156
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
