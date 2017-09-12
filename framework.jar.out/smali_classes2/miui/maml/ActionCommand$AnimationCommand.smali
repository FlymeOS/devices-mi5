.class Lmiui/maml/ActionCommand$AnimationCommand;
.super Lmiui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$AnimationCommand$CommandType;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "AnimationCommand"


# instance fields
.field private mAllAni:Z

.field private mAniTags:[Ljava/lang/String;

.field private mCommand:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

.field private mPlayParams:[Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 5
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 1400
    invoke-direct {p0, p1, p2}, Lmiui/maml/ActionCommand$TargetCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 1401
    const-string v2, "command"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1402
    .local v0, "command":Ljava/lang/String;
    const-string v2, "play"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1403
    sget-object v2, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    iput-object v2, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mCommand:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 1417
    :cond_0
    :goto_0
    const-string v2, "tags"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1418
    .local v1, "strTags":Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1419
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mAllAni:Z

    .line 1423
    :cond_1
    :goto_1
    return-void

    .line 1404
    .end local v1    # "strTags":Ljava/lang/String;
    :cond_2
    const-string v2, "pause"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1405
    sget-object v2, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PAUSE:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    iput-object v2, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mCommand:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    goto :goto_0

    .line 1406
    :cond_3
    const-string v2, "resume"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1407
    sget-object v2, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->RESUME:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    iput-object v2, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mCommand:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    goto :goto_0

    .line 1408
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "play("

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1409
    sget-object v2, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY_WITH_PARAMS:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    iput-object v2, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mCommand:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 1410
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$AnimationCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    .line 1411
    iget-object v2, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v2, v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v2, v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 1412
    const-string v2, "ActionCommand"

    const-string v3, "bad expression format"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1415
    :cond_5
    sget-object v2, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->INVALID:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    iput-object v2, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mCommand:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    goto :goto_0

    .line 1420
    .restart local v1    # "strTags":Ljava/lang/String;
    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1421
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mAniTags:[Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public doPerform()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    const/4 v0, 0x0

    .line 1427
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$AnimationCommand;->getTarget()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ScreenElement;

    .line 1428
    .local v1, "target":Lmiui/maml/elements/ScreenElement;
    if-nez v1, :cond_0

    .line 1471
    :goto_0
    return-void

    .line 1433
    :cond_0
    iget-object v8, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mCommand:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    sget-object v9, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    if-eq v8, v9, :cond_1

    iget-object v8, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mCommand:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    sget-object v9, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY_WITH_PARAMS:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    if-ne v8, v9, :cond_3

    .line 1434
    :cond_1
    iget-boolean v8, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mAllAni:Z

    if-nez v8, :cond_2

    iget-object v8, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mAniTags:[Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 1435
    :cond_2
    iget-object v8, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mAniTags:[Ljava/lang/String;

    invoke-virtual {v1, v8}, Lmiui/maml/elements/ScreenElement;->setAnim([Ljava/lang/String;)V

    .line 1439
    :cond_3
    sget-object v8, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

    iget-object v9, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mCommand:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {v9}, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 1441
    :pswitch_0
    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement;->playAnim()V

    goto :goto_0

    .line 1444
    :pswitch_1
    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement;->pauseAnim()V

    goto :goto_0

    .line 1447
    :pswitch_2
    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement;->resumeAnim()V

    goto :goto_0

    .line 1450
    :pswitch_3
    const-wide/16 v2, 0x0

    .line 1451
    .local v2, "startTime":J
    const-wide/16 v4, -0x1

    .line 1452
    .local v4, "endTime":J
    const/4 v6, 0x0

    .line 1453
    .local v6, "isLoop":Z
    const/4 v7, 0x0

    .line 1454
    .local v7, "isDelay":Z
    iget-object v8, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v8, v8

    if-lez v8, :cond_4

    .line 1455
    iget-object v8, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v8, v8, v0

    if-nez v8, :cond_8

    move-wide v8, v10

    :goto_1
    double-to-long v2, v8

    .line 1457
    :cond_4
    iget-object v8, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v8, v8

    if-le v8, v12, :cond_5

    .line 1458
    iget-object v8, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v8, v8, v12

    if-nez v8, :cond_9

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    :goto_2
    double-to-long v4, v8

    .line 1461
    :cond_5
    iget-object v8, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v8, v8

    if-le v8, v13, :cond_6

    .line 1462
    iget-object v8, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v8, v8, v13

    if-nez v8, :cond_a

    move v6, v0

    .line 1464
    :cond_6
    :goto_3
    iget-object v8, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v8, v8

    if-le v8, v14, :cond_7

    .line 1465
    iget-object v8, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v8, v8, v14

    if-nez v8, :cond_c

    move v7, v0

    .line 1467
    :cond_7
    :goto_4
    invoke-virtual/range {v1 .. v7}, Lmiui/maml/elements/ScreenElement;->playAnim(JJZZ)V

    goto :goto_0

    .line 1455
    :cond_8
    iget-object v8, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v8, v8, v0

    invoke-virtual {v8}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    goto :goto_1

    .line 1458
    :cond_9
    iget-object v8, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v8, v8, v12

    invoke-virtual {v8}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    goto :goto_2

    .line 1462
    :cond_a
    iget-object v8, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v8, v8, v13

    invoke-virtual {v8}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    cmpl-double v8, v8, v10

    if-lez v8, :cond_b

    move v6, v12

    goto :goto_3

    :cond_b
    move v6, v0

    goto :goto_3

    .line 1465
    :cond_c
    iget-object v8, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v8, v8, v14

    invoke-virtual {v8}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    cmpl-double v8, v8, v10

    if-lez v8, :cond_d

    move v7, v12

    goto :goto_4

    :cond_d
    move v7, v0

    goto :goto_4

    .line 1439
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
