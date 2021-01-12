.class public interface abstract Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;
.super Ljava/lang/Object;
.source "ISkinningBridgeEndpoint.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerEndpoint(Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract transfer(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract useVersion(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
