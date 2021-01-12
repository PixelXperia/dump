.class public final synthetic Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$Z_TRwRAbTGj1Y3mELpJI5PZUDxk;
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

.field private final synthetic f$5:I

.field private final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/sonymobile/systemui/gameservice/GameService$3;Landroid/os/IBinder;ILjava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$Z_TRwRAbTGj1Y3mELpJI5PZUDxk;->f$0:Lcom/sonymobile/systemui/gameservice/GameService$3;

    iput-object p2, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$Z_TRwRAbTGj1Y3mELpJI5PZUDxk;->f$1:Landroid/os/IBinder;

    iput p3, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$Z_TRwRAbTGj1Y3mELpJI5PZUDxk;->f$2:I

    iput-object p4, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$Z_TRwRAbTGj1Y3mELpJI5PZUDxk;->f$3:Ljava/lang/String;

    iput p5, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$Z_TRwRAbTGj1Y3mELpJI5PZUDxk;->f$4:I

    iput p6, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$Z_TRwRAbTGj1Y3mELpJI5PZUDxk;->f$5:I

    iput p7, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$Z_TRwRAbTGj1Y3mELpJI5PZUDxk;->f$6:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$Z_TRwRAbTGj1Y3mELpJI5PZUDxk;->f$0:Lcom/sonymobile/systemui/gameservice/GameService$3;

    iget-object v1, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$Z_TRwRAbTGj1Y3mELpJI5PZUDxk;->f$1:Landroid/os/IBinder;

    iget v2, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$Z_TRwRAbTGj1Y3mELpJI5PZUDxk;->f$2:I

    iget-object v3, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$Z_TRwRAbTGj1Y3mELpJI5PZUDxk;->f$3:Ljava/lang/String;

    iget v4, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$Z_TRwRAbTGj1Y3mELpJI5PZUDxk;->f$4:I

    iget v5, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$Z_TRwRAbTGj1Y3mELpJI5PZUDxk;->f$5:I

    iget v6, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$Z_TRwRAbTGj1Y3mELpJI5PZUDxk;->f$6:I

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/systemui/gameservice/GameService$3;->lambda$gameSetColoredIcon$3$GameService$3(Landroid/os/IBinder;ILjava/lang/String;III)V

    return-void
.end method
