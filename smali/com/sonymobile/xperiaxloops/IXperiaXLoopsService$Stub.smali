.class public abstract Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService$Stub;
.super Landroid/os/Binder;
.source "IXperiaXLoopsService.java"

# interfaces
.implements Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.sonymobile.xperiaxloops.IXperiaXLoopsService"

    .line 135
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 136
    instance-of v1, v0, Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;

    if-eqz v1, :cond_1

    .line 137
    check-cast v0, Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;

    return-object v0

    .line 139
    :cond_1
    new-instance v0, Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;
    .locals 1

    .line 555
    sget-object v0, Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService$Stub$Proxy;->sDefaultImpl:Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;

    return-object v0
.end method
