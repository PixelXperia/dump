.class public final synthetic Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$rGadQN2PCMWgFWeRzfIO_DA93Xg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/sonymobile/systemui/gameservice/GameService$3;

.field private final synthetic f$1:Landroid/os/IBinder;

.field private final synthetic f$2:I

.field private final synthetic f$3:Ljava/lang/String;

.field private final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/sonymobile/systemui/gameservice/GameService$3;Landroid/os/IBinder;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$rGadQN2PCMWgFWeRzfIO_DA93Xg;->f$0:Lcom/sonymobile/systemui/gameservice/GameService$3;

    iput-object p2, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$rGadQN2PCMWgFWeRzfIO_DA93Xg;->f$1:Landroid/os/IBinder;

    iput p3, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$rGadQN2PCMWgFWeRzfIO_DA93Xg;->f$2:I

    iput-object p4, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$rGadQN2PCMWgFWeRzfIO_DA93Xg;->f$3:Ljava/lang/String;

    iput p5, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$rGadQN2PCMWgFWeRzfIO_DA93Xg;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$rGadQN2PCMWgFWeRzfIO_DA93Xg;->f$0:Lcom/sonymobile/systemui/gameservice/GameService$3;

    iget-object v1, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$rGadQN2PCMWgFWeRzfIO_DA93Xg;->f$1:Landroid/os/IBinder;

    iget v2, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$rGadQN2PCMWgFWeRzfIO_DA93Xg;->f$2:I

    iget-object v3, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$rGadQN2PCMWgFWeRzfIO_DA93Xg;->f$3:Ljava/lang/String;

    iget p0, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$rGadQN2PCMWgFWeRzfIO_DA93Xg;->f$4:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/sonymobile/systemui/gameservice/GameService$3;->lambda$gameSetIcon$2$GameService$3(Landroid/os/IBinder;ILjava/lang/String;I)V

    return-void
.end method
