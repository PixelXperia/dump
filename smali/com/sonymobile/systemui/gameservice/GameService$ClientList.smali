.class abstract Lcom/sonymobile/systemui/gameservice/GameService$ClientList;
.super Landroid/util/SparseArray;
.source "GameService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/gameservice/GameService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ClientList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray<",
        "Lcom/sonymobile/systemui/gameservice/GameService$Client;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/gameservice/GameService;


# direct methods
.method private constructor <init>(Lcom/sonymobile/systemui/gameservice/GameService;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/sonymobile/systemui/gameservice/GameService$ClientList;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/systemui/gameservice/GameService;Lcom/sonymobile/systemui/gameservice/GameService$1;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/gameservice/GameService$ClientList;-><init>(Lcom/sonymobile/systemui/gameservice/GameService;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/systemui/gameservice/GameService$ClientList;Landroid/os/IBinder;I)Z
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/systemui/gameservice/GameService$ClientList;->put(Landroid/os/IBinder;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/sonymobile/systemui/gameservice/GameService$ClientList;Landroid/os/IBinder;I)Z
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/systemui/gameservice/GameService$ClientList;->check(Landroid/os/IBinder;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/sonymobile/systemui/gameservice/GameService$ClientList;Landroid/os/IBinder;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/systemui/gameservice/GameService$ClientList;->remove(Landroid/os/IBinder;I)V

    return-void
.end method

.method private check(Landroid/os/IBinder;I)Z
    .locals 1

    .line 84
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/systemui/gameservice/GameService$Client;

    invoke-static {p0}, Lcom/sonymobile/systemui/gameservice/GameService$Client;->access$300(Lcom/sonymobile/systemui/gameservice/GameService$Client;)Landroid/os/IBinder;

    move-result-object p0

    if-eq p0, p1, :cond_0

    const-string p0, "GameService"

    const-string p1, "only one client allowed"

    .line 85
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private put(Landroid/os/IBinder;I)Z
    .locals 3

    const-string v0, "GameService"

    if-nez p1, :cond_0

    const-string p0, "null token is not allowed"

    .line 93
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 96
    :cond_0
    :try_start_0
    new-instance v1, Lcom/sonymobile/systemui/gameservice/GameService$Client;

    iget-object v2, p0, Lcom/sonymobile/systemui/gameservice/GameService$ClientList;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    invoke-direct {v1, v2, p0, p2, p1}, Lcom/sonymobile/systemui/gameservice/GameService$Client;-><init>(Lcom/sonymobile/systemui/gameservice/GameService;Lcom/sonymobile/systemui/gameservice/GameService$ClientList;ILandroid/os/IBinder;)V

    invoke-super {p0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "error adding client"

    .line 99
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private remove(Landroid/os/IBinder;I)V
    .locals 1

    .line 106
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonymobile/systemui/gameservice/GameService$Client;

    if-eqz p2, :cond_0

    .line 107
    invoke-static {p2}, Lcom/sonymobile/systemui/gameservice/GameService$Client;->access$300(Lcom/sonymobile/systemui/gameservice/GameService$Client;)Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 108
    invoke-static {p2}, Lcom/sonymobile/systemui/gameservice/GameService$Client;->access$100(Lcom/sonymobile/systemui/gameservice/GameService$Client;)V

    .line 109
    invoke-static {p2}, Lcom/sonymobile/systemui/gameservice/GameService$Client;->access$200(Lcom/sonymobile/systemui/gameservice/GameService$Client;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonymobile/systemui/gameservice/GameService$ClientList;->remove(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 69
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 70
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/systemui/gameservice/GameService$Client;

    .line 71
    invoke-static {v1}, Lcom/sonymobile/systemui/gameservice/GameService$Client;->access$100(Lcom/sonymobile/systemui/gameservice/GameService$Client;)V

    .line 72
    invoke-static {v1}, Lcom/sonymobile/systemui/gameservice/GameService$Client;->access$200(Lcom/sonymobile/systemui/gameservice/GameService$Client;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/systemui/gameservice/GameService$ClientList;->onClientRemoved(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    invoke-super {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method protected abstract onClientRemoved(I)V
.end method

.method public remove(I)V
    .locals 0

    .line 79
    invoke-super {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 80
    invoke-virtual {p0, p1}, Lcom/sonymobile/systemui/gameservice/GameService$ClientList;->onClientRemoved(I)V

    return-void
.end method
