.class Lcom/sonymobile/systemui/gameservice/GameService$Client;
.super Ljava/lang/Object;
.source "GameService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/gameservice/GameService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Client"
.end annotation


# instance fields
.field private final mDisplayId:I

.field private final mList:Lcom/sonymobile/systemui/gameservice/GameService$ClientList;

.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/sonymobile/systemui/gameservice/GameService;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/gameservice/GameService;Lcom/sonymobile/systemui/gameservice/GameService$ClientList;ILandroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/sonymobile/systemui/gameservice/GameService$Client;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p2, p0, Lcom/sonymobile/systemui/gameservice/GameService$Client;->mList:Lcom/sonymobile/systemui/gameservice/GameService$ClientList;

    .line 46
    iput p3, p0, Lcom/sonymobile/systemui/gameservice/GameService$Client;->mDisplayId:I

    .line 47
    iput-object p4, p0, Lcom/sonymobile/systemui/gameservice/GameService$Client;->mToken:Landroid/os/IBinder;

    .line 48
    iget-object p1, p0, Lcom/sonymobile/systemui/gameservice/GameService$Client;->mToken:Landroid/os/IBinder;

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/systemui/gameservice/GameService$Client;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/sonymobile/systemui/gameservice/GameService$Client;->destroy()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/systemui/gameservice/GameService$Client;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/sonymobile/systemui/gameservice/GameService$Client;->mDisplayId:I

    return p0
.end method

.method static synthetic access$300(Lcom/sonymobile/systemui/gameservice/GameService$Client;)Landroid/os/IBinder;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/sonymobile/systemui/gameservice/GameService$Client;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method private destroy()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/sonymobile/systemui/gameservice/GameService$Client;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "GameService"

    const-string v1, "client died"

    .line 53
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/sonymobile/systemui/gameservice/GameService$Client;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    invoke-static {v0}, Lcom/sonymobile/systemui/gameservice/GameService;->access$000(Lcom/sonymobile/systemui/gameservice/GameService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$Client$3Gjg6RIMCBjD7zEJyuhbOrdlbfc;

    invoke-direct {v1, p0}, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$Client$3Gjg6RIMCBjD7zEJyuhbOrdlbfc;-><init>(Lcom/sonymobile/systemui/gameservice/GameService$Client;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$binderDied$0$GameService$Client()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/sonymobile/systemui/gameservice/GameService$Client;->mList:Lcom/sonymobile/systemui/gameservice/GameService$ClientList;

    iget p0, p0, Lcom/sonymobile/systemui/gameservice/GameService$Client;->mDisplayId:I

    invoke-virtual {v0, p0}, Lcom/sonymobile/systemui/gameservice/GameService$ClientList;->remove(I)V

    return-void
.end method
