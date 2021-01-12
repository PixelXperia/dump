.class public abstract Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint$Stub;
.super Landroid/os/Binder;
.source "ISkinningBridgeEndpoint.java"

# interfaces
.implements Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.sonymobile.runtimeskinning.ISkinningBridgeEndpoint"

    .line 54
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.sonymobile.runtimeskinning.ISkinningBridgeEndpoint"

    .line 65
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66
    instance-of v1, v0, Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;

    if-eqz v1, :cond_1

    .line 67
    check-cast v0, Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;

    return-object v0

    .line 69
    :cond_1
    new-instance v0, Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;
    .locals 1

    .line 222
    sget-object v0, Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint$Stub$Proxy;->sDefaultImpl:Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.sonymobile.runtimeskinning.ISkinningBridgeEndpoint"

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 82
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 106
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 109
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p1

    .line 110
    invoke-interface {p0, p1}, Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;->transfer(Ljava/util/Map;)V

    return v0

    .line 97
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;

    move-result-object p1

    .line 100
    invoke-interface {p0, p1}, Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;->registerEndpoint(Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 87
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-interface {p0, p1}, Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;->useVersion(Ljava/lang/String;)Z

    move-result p0

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_4

    move p0, v0

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    .line 92
    :goto_0
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method
