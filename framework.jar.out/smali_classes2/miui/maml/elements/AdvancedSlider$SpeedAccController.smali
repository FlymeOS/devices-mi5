.class Lmiui/maml/elements/AdvancedSlider$SpeedAccController;
.super Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;
.source "AdvancedSlider.java"

# interfaces
.implements Lmiui/maml/elements/ITicker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeedAccController"
.end annotation


# instance fields
.field private mBounceAccelation:I

.field private mBounceAccelationExp:Lmiui/maml/data/Expression;

.field private mBounceInitSpeed:I

.field private mBounceInitSpeedExp:Lmiui/maml/data/Expression;

.field private mBounceProgress:Lmiui/maml/data/IndexedVariable;

.field final synthetic this$0:Lmiui/maml/elements/AdvancedSlider;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;)V
    .locals 4
    .param p2, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 257
    iput-object p1, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;-><init>(Lmiui/maml/elements/AdvancedSlider;Lmiui/maml/elements/AdvancedSlider$1;)V

    .line 258
    invoke-virtual {p1}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "bounceInitSpeed"

    invoke-virtual {p1, p2, v1}, Lmiui/maml/elements/AdvancedSlider;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceInitSpeedExp:Lmiui/maml/data/Expression;

    .line 259
    invoke-virtual {p1}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "bounceAcceleration"

    invoke-virtual {p1, p2, v1}, Lmiui/maml/elements/AdvancedSlider;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceAccelationExp:Lmiui/maml/data/Expression;

    .line 260
    iget-boolean v0, p1, Lmiui/maml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v0, :cond_0

    .line 261
    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lmiui/maml/elements/AdvancedSlider;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bounce_progress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceProgress:Lmiui/maml/data/IndexedVariable;

    .line 263
    :cond_0
    return-void
.end method


# virtual methods
.method protected getDistance(J)J
    .locals 13
    .param p1, "time"    # J

    .prologue
    .line 293
    iget v6, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceInitSpeed:I

    int-to-long v6, v6

    mul-long/2addr v6, p1

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    iget v8, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceAccelation:I

    int-to-long v8, v8

    mul-long/2addr v8, p1

    mul-long/2addr v8, p1

    const-wide/32 v10, 0x1e8480

    div-long/2addr v8, v10

    add-long v0, v6, v8

    .line 294
    .local v0, "dist":J
    iget v6, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceInitSpeed:I

    int-to-long v6, v6

    iget v8, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceAccelation:I

    int-to-long v8, v8

    mul-long/2addr v8, p1

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    add-long v4, v6, v8

    .line 295
    .local v4, "speed":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_0

    .line 296
    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->onStop()V

    .line 297
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceProgress:Lmiui/maml/data/IndexedVariable;

    if-eqz v6, :cond_0

    .line 298
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceProgress:Lmiui/maml/data/IndexedVariable;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v6, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 301
    :cond_0
    iget-wide v6, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mTotalDistance:D

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_2

    .line 302
    long-to-double v6, v0

    iget-wide v8, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mTotalDistance:D

    div-double v2, v6, v8

    .line 305
    .local v2, "progress":D
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceProgress:Lmiui/maml/data/IndexedVariable;

    if-eqz v6, :cond_2

    .line 306
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceProgress:Lmiui/maml/data/IndexedVariable;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v2, v8

    if-lez v7, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .end local v2    # "progress":D
    :cond_1
    invoke-virtual {v6, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 309
    :cond_2
    return-wide v0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 267
    invoke-super {p0}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->init()V

    .line 268
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceProgress:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceProgress:Lmiui/maml/data/IndexedVariable;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 270
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 283
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceInitSpeedExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceInitSpeedExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0, v1}, Lmiui/maml/elements/AdvancedSlider;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceInitSpeed:I

    .line 285
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceAccelationExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceAccelationExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0, v1}, Lmiui/maml/elements/AdvancedSlider;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceAccelation:I

    .line 287
    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceProgress:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_2

    .line 288
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceProgress:Lmiui/maml/data/IndexedVariable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 289
    :cond_2
    return-void
.end method

.method public start(Lmiui/maml/elements/AdvancedSlider$EndPoint;)V
    .locals 1
    .param p1, "ep"    # Lmiui/maml/elements/AdvancedSlider$EndPoint;

    .prologue
    .line 274
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceInitSpeedExp:Lmiui/maml/data/Expression;

    if-nez v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->onStop()V

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-super {p0, p1}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->start(Lmiui/maml/elements/AdvancedSlider$EndPoint;)V

    goto :goto_0
.end method
