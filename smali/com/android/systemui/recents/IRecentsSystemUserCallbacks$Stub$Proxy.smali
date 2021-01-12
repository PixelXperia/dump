.class Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRecentsSystemUserCallbacks.java"

# interfaces
.implements Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public registerNonSystemUserCallbacks(Landroid/os/IBinder;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.systemui.recents.IRecentsSystemUserCallbacks"

    .line 172
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 174
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget-object p0, p0, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 176
    invoke-static {}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;->getDefaultImpl()Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 177
    invoke-static {}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;->getDefaultImpl()Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;->registerNonSystemUserCallbacks(Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
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

.method public sendDockedFirstAnimationFrameEvent()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.systemui.recents.IRecentsSystemUserCallbacks"

    .line 273
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 274
    iget-object p0, p0, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 275
    invoke-static {}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;->getDefaultImpl()Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 276
    invoke-static {}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;->getDefaultImpl()Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;->sendDockedFirstAnimationFrameEvent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
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

.method public sendDockingTopTaskEvent(Landroid/graphics/Rect;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.systemui.recents.IRecentsSystemUserCallbacks"

    .line 236
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 238
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 245
    invoke-static {}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;->getDefaultImpl()Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 246
    invoke-static {}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;->getDefaultImpl()Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;->sendDockingTopTaskEvent(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public sendLaunchRecentsEvent()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.systemui.recents.IRecentsSystemUserCallbacks"

    .line 258
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 259
    iget-object p0, p0, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 260
    invoke-static {}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;->getDefaultImpl()Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 261
    invoke-static {}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;->getDefaultImpl()Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;->sendLaunchRecentsEvent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
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

.method public sendRecentsDrawnEvent()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 219
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.systemui.recents.IRecentsSystemUserCallbacks"

    .line 221
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 222
    iget-object p0, p0, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 223
    invoke-static {}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;->getDefaultImpl()Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 224
    invoke-static {}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;->getDefaultImpl()Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;->sendRecentsDrawnEvent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
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

.method public setWaitingForTransitionStartEvent(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.systemui.recents.IRecentsSystemUserCallbacks"

    .line 288
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 289
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget-object p0, p0, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 291
    invoke-static {}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;->getDefaultImpl()Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 292
    invoke-static {}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;->getDefaultImpl()Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;->setWaitingForTransitionStartEvent(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public startScreenPinning(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.systemui.recents.IRecentsSystemUserCallbacks"

    .line 205
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget-object p0, p0, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 208
    invoke-static {}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;->getDefaultImpl()Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 209
    invoke-static {}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;->getDefaultImpl()Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;->startScreenPinning(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
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

.method public updateRecentsVisibility(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.systemui.recents.IRecentsSystemUserCallbacks"

    .line 189
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 190
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget-object p0, p0, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 192
    invoke-static {}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;->getDefaultImpl()Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 193
    invoke-static {}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;->getDefaultImpl()Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;->updateRecentsVisibility(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
