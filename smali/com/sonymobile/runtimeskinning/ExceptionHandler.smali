.class Lcom/sonymobile/runtimeskinning/ExceptionHandler;
.super Ljava/lang/Object;
.source "ExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private mCause:Ljava/lang/Throwable;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static reThrow(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 49
    instance-of v0, p0, Landroid/os/RemoteException;

    if-eqz v0, :cond_0

    .line 50
    check-cast p0, Landroid/os/RemoteException;

    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    .line 53
    invoke-virtual {v0, p0}, Landroid/os/RemoteException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-object p0, v0

    .line 55
    :goto_0
    throw p0

    :cond_1
    return-void
.end method


# virtual methods
.method reThrow()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/ExceptionHandler;->mCause:Ljava/lang/Throwable;

    invoke-static {p0}, Lcom/sonymobile/runtimeskinning/ExceptionHandler;->reThrow(Ljava/lang/Throwable;)V

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 28
    iput-object p2, p0, Lcom/sonymobile/runtimeskinning/ExceptionHandler;->mCause:Ljava/lang/Throwable;

    return-void
.end method
