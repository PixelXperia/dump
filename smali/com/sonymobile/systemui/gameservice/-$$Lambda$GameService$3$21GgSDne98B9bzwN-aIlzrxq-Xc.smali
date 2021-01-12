.class public final synthetic Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$21GgSDne98B9bzwN-aIlzrxq-Xc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/sonymobile/systemui/gameservice/GameService$3;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Landroid/os/IBinder;

.field private final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/sonymobile/systemui/gameservice/GameService$3;ZLandroid/os/IBinder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$21GgSDne98B9bzwN-aIlzrxq-Xc;->f$0:Lcom/sonymobile/systemui/gameservice/GameService$3;

    iput-boolean p2, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$21GgSDne98B9bzwN-aIlzrxq-Xc;->f$1:Z

    iput-object p3, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$21GgSDne98B9bzwN-aIlzrxq-Xc;->f$2:Landroid/os/IBinder;

    iput p4, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$21GgSDne98B9bzwN-aIlzrxq-Xc;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$21GgSDne98B9bzwN-aIlzrxq-Xc;->f$0:Lcom/sonymobile/systemui/gameservice/GameService$3;

    iget-boolean v1, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$21GgSDne98B9bzwN-aIlzrxq-Xc;->f$1:Z

    iget-object v2, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$21GgSDne98B9bzwN-aIlzrxq-Xc;->f$2:Landroid/os/IBinder;

    iget p0, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$21GgSDne98B9bzwN-aIlzrxq-Xc;->f$3:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/sonymobile/systemui/gameservice/GameService$3;->lambda$lockSetEnabled$1$GameService$3(ZLandroid/os/IBinder;I)V

    return-void
.end method
