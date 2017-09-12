.class abstract Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;
.super Ljava/lang/Object;
.source "AdvancedSlider.java"

# interfaces
.implements Lmiui/maml/elements/ITicker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ReboundAnimationController"
.end annotation


# instance fields
.field private mBounceStartPointIndex:I

.field private mEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

.field private mPreDistance:J

.field protected mStartTime:J

.field private mStartX:F

.field private mStartY:F

.field protected mTotalDistance:D

.field final synthetic this$0:Lmiui/maml/elements/AdvancedSlider;


# direct methods
.method private constructor <init>(Lmiui/maml/elements/AdvancedSlider;)V
    .locals 2

    .prologue
    .line 96
    iput-object p1, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/AdvancedSlider;Lmiui/maml/elements/AdvancedSlider$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/maml/elements/AdvancedSlider;
    .param p2, "x1"    # Lmiui/maml/elements/AdvancedSlider$1;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;-><init>(Lmiui/maml/elements/AdvancedSlider;)V

    return-void
.end method

.method private getPoint(FFFFJ)Lmiui/maml/util/Utils$Point;
    .locals 19
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "distance"    # J

    .prologue
    .line 226
    new-instance v6, Lmiui/maml/util/Utils$Point;

    move/from16 v0, p1

    float-to-double v12, v0

    move/from16 v0, p2

    float-to-double v14, v0

    invoke-direct {v6, v12, v13, v14, v15}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    .line 227
    .local v6, "pt1":Lmiui/maml/util/Utils$Point;
    new-instance v7, Lmiui/maml/util/Utils$Point;

    move/from16 v0, p3

    float-to-double v12, v0

    move/from16 v0, p4

    float-to-double v14, v0

    invoke-direct {v7, v12, v13, v14, v15}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    .line 228
    .local v7, "pt2":Lmiui/maml/util/Utils$Point;
    const/4 v12, 0x1

    invoke-static {v6, v7, v12}, Lmiui/maml/util/Utils;->Dist(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)D

    move-result-wide v10

    .line 229
    .local v10, "total":D
    move-wide/from16 v0, p5

    long-to-double v12, v0

    cmpl-double v12, v12, v10

    if-ltz v12, :cond_0

    .line 230
    const/4 v12, 0x0

    .line 234
    :goto_0
    return-object v12

    .line 231
    :cond_0
    move-wide/from16 v0, p5

    long-to-double v12, v0

    sub-double v12, v10, v12

    div-double v8, v12, v10

    .line 232
    .local v8, "ratio":D
    iget-wide v12, v7, Lmiui/maml/util/Utils$Point;->x:D

    iget-wide v14, v6, Lmiui/maml/util/Utils$Point;->x:D

    sub-double/2addr v12, v14

    mul-double v2, v12, v8

    .line 233
    .local v2, "dx":D
    iget-wide v12, v7, Lmiui/maml/util/Utils$Point;->y:D

    iget-wide v14, v6, Lmiui/maml/util/Utils$Point;->y:D

    sub-double/2addr v12, v14

    mul-double v4, v12, v8

    .line 234
    .local v4, "dy":D
    new-instance v12, Lmiui/maml/util/Utils$Point;

    iget-wide v14, v6, Lmiui/maml/util/Utils$Point;->x:D

    add-double/2addr v14, v2

    iget-wide v0, v6, Lmiui/maml/util/Utils$Point;->y:D

    move-wide/from16 v16, v0

    add-double v16, v16, v4

    move-wide/from16 v0, v16

    invoke-direct {v12, v14, v15, v0, v1}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract getDistance(J)J
.end method

.method public init()V
    .locals 2

    .prologue
    .line 116
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    .line 117
    return-void
.end method

.method public isRunning()Z
    .locals 4

    .prologue
    .line 238
    iget-wide v0, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMove(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 219
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    # invokes: Lmiui/maml/elements/AdvancedSlider;->moveStartPoint(FF)V
    invoke-static {v0, p1, p2}, Lmiui/maml/elements/AdvancedSlider;->access$300(Lmiui/maml/elements/AdvancedSlider;FF)V

    .line 220
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 160
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    .line 161
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    # invokes: Lmiui/maml/elements/AdvancedSlider;->cancelMoving()V
    invoke-static {v0}, Lmiui/maml/elements/AdvancedSlider;->access$200(Lmiui/maml/elements/AdvancedSlider;)V

    .line 162
    return-void
.end method

.method public start(Lmiui/maml/elements/AdvancedSlider$EndPoint;)V
    .locals 13
    .param p1, "ep"    # Lmiui/maml/elements/AdvancedSlider$EndPoint;

    .prologue
    const/4 v12, 0x1

    .line 120
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    .line 121
    iput-object p1, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    .line 122
    iget-object v7, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    # getter for: Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;
    invoke-static {v7}, Lmiui/maml/elements/AdvancedSlider;->access$000(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v7

    invoke-virtual {v7}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getOffsetX()F

    move-result v7

    iget-object v8, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    # getter for: Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;
    invoke-static {v8}, Lmiui/maml/elements/AdvancedSlider;->access$000(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v8

    invoke-virtual {v8}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    move-result v8

    add-float/2addr v7, v8

    iput v7, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartX:F

    .line 123
    iget-object v7, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    # getter for: Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;
    invoke-static {v7}, Lmiui/maml/elements/AdvancedSlider;->access$000(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v7

    invoke-virtual {v7}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getOffsetY()F

    move-result v7

    iget-object v8, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    # getter for: Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;
    invoke-static {v8}, Lmiui/maml/elements/AdvancedSlider;->access$000(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v8

    invoke-virtual {v8}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    move-result v8

    add-float/2addr v7, v8

    iput v7, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartY:F

    .line 124
    const/4 v7, -0x1

    iput v7, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mBounceStartPointIndex:I

    .line 125
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    .line 126
    new-instance v1, Lmiui/maml/util/Utils$Point;

    iget v7, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartX:F

    float-to-double v8, v7

    iget v7, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartY:F

    float-to-double v10, v7

    invoke-direct {v1, v8, v9, v10, v11}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    .line 127
    .local v1, "p0":Lmiui/maml/util/Utils$Point;
    if-eqz p1, :cond_2

    # getter for: Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static {p1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 128
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    # getter for: Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static {p1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_0

    .line 129
    # getter for: Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static {p1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v7

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/maml/elements/AdvancedSlider$Position;

    .line 130
    .local v5, "pt1":Lmiui/maml/elements/AdvancedSlider$Position;
    # getter for: Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static {p1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/elements/AdvancedSlider$Position;

    .line 131
    .local v6, "pt2":Lmiui/maml/elements/AdvancedSlider$Position;
    new-instance v2, Lmiui/maml/util/Utils$Point;

    invoke-virtual {v5}, Lmiui/maml/elements/AdvancedSlider$Position;->getX()F

    move-result v7

    float-to-double v8, v7

    invoke-virtual {v5}, Lmiui/maml/elements/AdvancedSlider$Position;->getY()F

    move-result v7

    float-to-double v10, v7

    invoke-direct {v2, v8, v9, v10, v11}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    .line 132
    .local v2, "p1":Lmiui/maml/util/Utils$Point;
    new-instance v3, Lmiui/maml/util/Utils$Point;

    invoke-virtual {v6}, Lmiui/maml/elements/AdvancedSlider$Position;->getX()F

    move-result v7

    float-to-double v8, v7

    invoke-virtual {v6}, Lmiui/maml/elements/AdvancedSlider$Position;->getY()F

    move-result v7

    float-to-double v10, v7

    invoke-direct {v3, v8, v9, v10, v11}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    .line 133
    .local v3, "p2":Lmiui/maml/util/Utils$Point;
    const/4 v7, 0x0

    invoke-static {v2, v3, v1, v7}, Lmiui/maml/util/Utils;->pointProjectionOnSegment(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)Lmiui/maml/util/Utils$Point;

    move-result-object v4

    .line 134
    .local v4, "pt":Lmiui/maml/util/Utils$Point;
    if-eqz v4, :cond_1

    .line 135
    add-int/lit8 v7, v0, -0x1

    iput v7, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mBounceStartPointIndex:I

    .line 136
    iget-wide v8, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    invoke-static {v2, v4, v12}, Lmiui/maml/util/Utils;->Dist(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)D

    move-result-wide v10

    add-double/2addr v8, v10

    iput-wide v8, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    .line 146
    .end local v0    # "i":I
    .end local v2    # "p1":Lmiui/maml/util/Utils$Point;
    .end local v3    # "p2":Lmiui/maml/util/Utils$Point;
    .end local v4    # "pt":Lmiui/maml/util/Utils$Point;
    .end local v5    # "pt1":Lmiui/maml/elements/AdvancedSlider$Position;
    .end local v6    # "pt2":Lmiui/maml/elements/AdvancedSlider$Position;
    :cond_0
    :goto_1
    iget-wide v8, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    cmpg-double v7, v8, v10

    if-gez v7, :cond_3

    .line 147
    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->onStop()V

    .line 153
    :goto_2
    return-void

    .line 139
    .restart local v0    # "i":I
    .restart local v2    # "p1":Lmiui/maml/util/Utils$Point;
    .restart local v3    # "p2":Lmiui/maml/util/Utils$Point;
    .restart local v4    # "pt":Lmiui/maml/util/Utils$Point;
    .restart local v5    # "pt1":Lmiui/maml/elements/AdvancedSlider$Position;
    .restart local v6    # "pt2":Lmiui/maml/elements/AdvancedSlider$Position;
    :cond_1
    iget-wide v8, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    invoke-static {v2, v3, v12}, Lmiui/maml/util/Utils;->Dist(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)D

    move-result-wide v10

    add-double/2addr v8, v10

    iput-wide v8, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    .end local v0    # "i":I
    .end local v2    # "p1":Lmiui/maml/util/Utils$Point;
    .end local v3    # "p2":Lmiui/maml/util/Utils$Point;
    .end local v4    # "pt":Lmiui/maml/util/Utils$Point;
    .end local v5    # "pt1":Lmiui/maml/elements/AdvancedSlider$Position;
    .end local v6    # "pt2":Lmiui/maml/elements/AdvancedSlider$Position;
    :cond_2
    new-instance v7, Lmiui/maml/util/Utils$Point;

    iget-object v8, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    # getter for: Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;
    invoke-static {v8}, Lmiui/maml/elements/AdvancedSlider;->access$000(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v8

    invoke-virtual {v8}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    move-result v8

    float-to-double v8, v8

    iget-object v10, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    # getter for: Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;
    invoke-static {v10}, Lmiui/maml/elements/AdvancedSlider;->access$000(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v10

    invoke-virtual {v10}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    move-result v10

    float-to-double v10, v10

    invoke-direct {v7, v8, v9, v10, v11}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    invoke-static {v7, v1, v12}, Lmiui/maml/util/Utils;->Dist(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)D

    move-result-wide v8

    iput-wide v8, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    goto :goto_1

    .line 151
    :cond_3
    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->onStart()V

    .line 152
    iget-object v7, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-virtual {v7}, Lmiui/maml/elements/AdvancedSlider;->requestUpdate()V

    goto :goto_2
.end method

.method public stopRunning()V
    .locals 2

    .prologue
    .line 242
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    .line 243
    return-void
.end method

.method public tick(J)V
    .locals 27
    .param p1, "currentTime"    # J

    .prologue
    .line 165
    move-object/from16 v0, p0

    iget-wide v6, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    move-object/from16 v0, p0

    iget-wide v6, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    .line 169
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    .line 170
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mPreDistance:J

    .line 215
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-virtual {v5}, Lmiui/maml/elements/AdvancedSlider;->requestUpdate()V

    goto :goto_0

    .line 172
    :cond_2
    move-object/from16 v0, p0

    iget-wide v6, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    sub-long v24, p1, v6

    .line 174
    .local v24, "time":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->getDistance(J)J

    move-result-wide v10

    .line 176
    .local v10, "dist":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_0

    .line 179
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    # getter for: Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static {v5}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v5

    if-nez v5, :cond_6

    .line 180
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    # getter for: Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;
    invoke-static {v5}, Lmiui/maml/elements/AdvancedSlider;->access$000(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    # getter for: Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;
    invoke-static {v5}, Lmiui/maml/elements/AdvancedSlider;->access$000(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartX:F

    move-object/from16 v0, p0

    iget v9, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartY:F

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->getPoint(FFFFJ)Lmiui/maml/util/Utils$Point;

    move-result-object v21

    .line 182
    .local v21, "pt":Lmiui/maml/util/Utils$Point;
    if-nez v21, :cond_5

    .line 183
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->onStop()V

    .line 212
    .end local v21    # "pt":Lmiui/maml/util/Utils$Point;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iput-wide v10, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mPreDistance:J

    goto :goto_1

    .line 185
    .restart local v21    # "pt":Lmiui/maml/util/Utils$Point;
    :cond_5
    move-object/from16 v0, v21

    iget-wide v6, v0, Lmiui/maml/util/Utils$Point;->x:D

    double-to-float v5, v6

    move-object/from16 v0, v21

    iget-wide v6, v0, Lmiui/maml/util/Utils$Point;->y:D

    double-to-float v6, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->onMove(FF)V

    goto :goto_2

    .line 188
    .end local v21    # "pt":Lmiui/maml/util/Utils$Point;
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    # getter for: Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;
    invoke-static {v5}, Lmiui/maml/elements/AdvancedSlider;->access$000(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getOffsetX()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    # getter for: Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;
    invoke-static {v6}, Lmiui/maml/elements/AdvancedSlider;->access$000(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    move-result v6

    add-float v16, v5, v6

    .line 189
    .local v16, "x2":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    # getter for: Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;
    invoke-static {v5}, Lmiui/maml/elements/AdvancedSlider;->access$000(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getOffsetY()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    # getter for: Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;
    invoke-static {v6}, Lmiui/maml/elements/AdvancedSlider;->access$000(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    move-result v6

    add-float v17, v5, v6

    .line 190
    .local v17, "y2":F
    move-object/from16 v0, p0

    iget-wide v6, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mPreDistance:J

    sub-long v18, v10, v6

    .line 191
    .local v18, "d":J
    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mBounceStartPointIndex:I

    .local v4, "i":I
    :goto_3
    if-ltz v4, :cond_4

    .line 192
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    # getter for: Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static {v5}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lmiui/maml/elements/AdvancedSlider$Position;

    .line 193
    .local v22, "pt1":Lmiui/maml/elements/AdvancedSlider$Position;
    invoke-virtual/range {v22 .. v22}, Lmiui/maml/elements/AdvancedSlider$Position;->getX()F

    move-result v14

    invoke-virtual/range {v22 .. v22}, Lmiui/maml/elements/AdvancedSlider$Position;->getY()F

    move-result v15

    move-object/from16 v13, p0

    invoke-direct/range {v13 .. v19}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->getPoint(FFFFJ)Lmiui/maml/util/Utils$Point;

    move-result-object v21

    .line 194
    .restart local v21    # "pt":Lmiui/maml/util/Utils$Point;
    if-nez v21, :cond_8

    .line 195
    if-nez v4, :cond_7

    .line 196
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->onStop()V

    goto :goto_2

    .line 199
    :cond_7
    new-instance v12, Lmiui/maml/util/Utils$Point;

    invoke-virtual/range {v22 .. v22}, Lmiui/maml/elements/AdvancedSlider$Position;->getX()F

    move-result v5

    float-to-double v6, v5

    invoke-virtual/range {v22 .. v22}, Lmiui/maml/elements/AdvancedSlider$Position;->getY()F

    move-result v5

    float-to-double v8, v5

    invoke-direct {v12, v6, v7, v8, v9}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    .line 200
    .local v12, "p1":Lmiui/maml/util/Utils$Point;
    new-instance v20, Lmiui/maml/util/Utils$Point;

    move/from16 v0, v16

    float-to-double v6, v0

    move/from16 v0, v17

    float-to-double v8, v0

    move-object/from16 v0, v20

    invoke-direct {v0, v6, v7, v8, v9}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    .line 201
    .local v20, "p2":Lmiui/maml/util/Utils$Point;
    move-wide/from16 v0, v18

    long-to-double v6, v0

    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-static {v12, v0, v5}, Lmiui/maml/util/Utils;->Dist(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)D

    move-result-wide v8

    sub-double/2addr v6, v8

    double-to-long v0, v6

    move-wide/from16 v18, v0

    .line 202
    invoke-virtual/range {v22 .. v22}, Lmiui/maml/elements/AdvancedSlider$Position;->getX()F

    move-result v16

    .line 203
    invoke-virtual/range {v22 .. v22}, Lmiui/maml/elements/AdvancedSlider$Position;->getY()F

    move-result v17

    .line 191
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 206
    .end local v12    # "p1":Lmiui/maml/util/Utils$Point;
    .end local v20    # "p2":Lmiui/maml/util/Utils$Point;
    :cond_8
    move-object/from16 v0, p0

    iput v4, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mBounceStartPointIndex:I

    .line 207
    move-object/from16 v0, v21

    iget-wide v6, v0, Lmiui/maml/util/Utils$Point;->x:D

    double-to-float v5, v6

    move-object/from16 v0, v21

    iget-wide v6, v0, Lmiui/maml/util/Utils$Point;->y:D

    double-to-float v6, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->onMove(FF)V

    goto/16 :goto_2
.end method
