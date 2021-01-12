.class public final synthetic Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$Piqmg4XlAazQqbLMOZD4WydiIhg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/sonymobile/systemui/gameservice/GameService$3;

.field private final synthetic f$1:Landroid/os/IBinder;

.field private final synthetic f$2:I

.field private final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/sonymobile/systemui/gameservice/GameService$3;Landroid/os/IBinder;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$Piqmg4XlAazQqbLMOZD4WydiIhg;->f$0:Lcom/sonymobile/systemui/gameservice/GameService$3;

    iput-object p2, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$Piqmg4XlAazQqbLMOZD4WydiIhg;->f$1:Landroid/os/IBinder;

    iput p3, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$Piqmg4XlAazQqbLMOZD4WydiIhg;->f$2:I

    iput-wide p4, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$Piqmg4XlAazQqbLMOZD4WydiIhg;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$Piqmg4XlAazQqbLMOZD4WydiIhg;->f$0:Lcom/sonymobile/systemui/gameservice/GameService$3;

    iget-object v1, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$Piqmg4XlAazQqbLMOZD4WydiIhg;->f$1:Landroid/os/IBinder;

    iget v2, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$Piqmg4XlAazQqbLMOZD4WydiIhg;->f$2:I

    iget-wide v3, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$Piqmg4XlAazQqbLMOZD4WydiIhg;->f$3:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonymobile/systemui/gameservice/GameService$3;->lambda$lockSetReLockDelay$0$GameService$3(Landroid/os/IBinder;IJ)V

    return-void
.end method
