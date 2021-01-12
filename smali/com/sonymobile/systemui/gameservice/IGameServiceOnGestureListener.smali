.class public interface abstract Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener;
.super Ljava/lang/Object;
.source "IGameServiceOnGestureListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onGameButtonDoubleTap()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onGameButtonLongPress()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onGameButtonSingleTap()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
