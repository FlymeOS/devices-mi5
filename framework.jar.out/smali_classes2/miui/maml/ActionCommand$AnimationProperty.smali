.class Lmiui/maml/ActionCommand$AnimationProperty;
.super Lmiui/maml/ActionCommand$PropertyCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationProperty"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$AnimationProperty$Type;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final PROPERTY_NAME:Ljava/lang/String; = "animation"


# instance fields
.field private mPlayParams:[Lmiui/maml/data/Expression;

.field private mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;


# direct methods
.method protected constructor <init>(Lmiui/maml/elements/ScreenElement;Lmiui/maml/util/Variable;Ljava/lang/String;)V
    .locals 3
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "targetObj"    # Lmiui/maml/util/Variable;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1228
    invoke-direct {p0, p1, p2, p3}, Lmiui/maml/ActionCommand$PropertyCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lmiui/maml/util/Variable;Ljava/lang/String;)V

    .line 1229
    const-string v0, "play"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1230
    sget-object v0, Lmiui/maml/ActionCommand$AnimationProperty$Type;->PLAY:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    .line 1244
    :cond_0
    :goto_0
    return-void

    .line 1231
    :cond_1
    const-string v0, "pause"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1232
    sget-object v0, Lmiui/maml/ActionCommand$AnimationProperty$Type;->PAUSE:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    goto :goto_0

    .line 1233
    :cond_2
    const-string v0, "resume"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1234
    sget-object v0, Lmiui/maml/ActionCommand$AnimationProperty$Type;->RESUME:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    goto :goto_0

    .line 1235
    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "play("

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ")"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1236
    sget-object v0, Lmiui/maml/ActionCommand$AnimationProperty$Type;->PLAY_WITH_PARAMS:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    .line 1237
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$AnimationProperty;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    .line 1238
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v0, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v0, v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1239
    const-string v0, "ActionCommand"

    const-string v1, "bad expression format"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1242
    :cond_4
    sget-object v0, Lmiui/maml/ActionCommand$AnimationProperty$Type;->INVALID:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    goto :goto_0
.end method


# virtual methods
.method public doPerform()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const-wide/16 v8, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1248
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationProperty$Type:[I

    iget-object v1, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$AnimationProperty$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1280
    :goto_0
    return-void

    .line 1250
    :pswitch_0
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ScreenElement;->playAnim()V

    goto :goto_0

    .line 1253
    :pswitch_1
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ScreenElement;->pauseAnim()V

    goto :goto_0

    .line 1256
    :pswitch_2
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ScreenElement;->resumeAnim()V

    goto :goto_0

    .line 1259
    :pswitch_3
    const-wide/16 v2, 0x0

    .line 1260
    .local v2, "startTime":J
    const-wide/16 v4, -0x1

    .line 1261
    .local v4, "endTime":J
    const/4 v6, 0x0

    .line 1262
    .local v6, "isLoop":Z
    const/4 v7, 0x0

    .line 1263
    .local v7, "isDelay":Z
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 1264
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v0, v0, v10

    if-nez v0, :cond_4

    move-wide v0, v8

    :goto_1
    double-to-long v2, v0

    .line 1266
    :cond_0
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v0, v0

    if-le v0, v11, :cond_1

    .line 1267
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v0, v0, v11

    if-nez v0, :cond_5

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_2
    double-to-long v4, v0

    .line 1270
    :cond_1
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v0, v0

    if-le v0, v12, :cond_2

    .line 1271
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v0, v0, v12

    if-nez v0, :cond_6

    move v6, v10

    .line 1273
    :cond_2
    :goto_3
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v0, v0

    if-le v0, v13, :cond_3

    .line 1274
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v0, v0, v13

    if-nez v0, :cond_8

    move v7, v10

    .line 1276
    :cond_3
    :goto_4
    iget-object v1, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual/range {v1 .. v7}, Lmiui/maml/elements/ScreenElement;->playAnim(JJZZ)V

    goto :goto_0

    .line 1264
    :cond_4
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    goto :goto_1

    .line 1267
    :cond_5
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v0, v0, v11

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    goto :goto_2

    .line 1271
    :cond_6
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v0, v0, v12

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    cmpl-double v0, v0, v8

    if-lez v0, :cond_7

    move v6, v11

    goto :goto_3

    :cond_7
    move v6, v10

    goto :goto_3

    .line 1274
    :cond_8
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v0, v0, v13

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    cmpl-double v0, v0, v8

    if-lez v0, :cond_9

    move v7, v11

    goto :goto_4

    :cond_9
    move v7, v10

    goto :goto_4

    .line 1248
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
