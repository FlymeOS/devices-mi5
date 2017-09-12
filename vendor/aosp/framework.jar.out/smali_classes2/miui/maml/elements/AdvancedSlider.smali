.class public Lmiui/maml/elements/AdvancedSlider;
.super Lmiui/maml/elements/ElementGroup;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/AdvancedSlider$1;,
        Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;,
        Lmiui/maml/elements/AdvancedSlider$EndPoint;,
        Lmiui/maml/elements/AdvancedSlider$LaunchAction;,
        Lmiui/maml/elements/AdvancedSlider$Position;,
        Lmiui/maml/elements/AdvancedSlider$StartPoint;,
        Lmiui/maml/elements/AdvancedSlider$SliderPoint;,
        Lmiui/maml/elements/AdvancedSlider$State;,
        Lmiui/maml/elements/AdvancedSlider$InterpolatorController;,
        Lmiui/maml/elements/AdvancedSlider$SpeedAccController;,
        Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;,
        Lmiui/maml/elements/AdvancedSlider$OnLaunchListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_DRAG_TOLERANCE:I = 0x96

.field private static final FREE_ENDPOINT_DIST:F = 1.7014117E38f

.field private static final LOG_TAG:Ljava/lang/String; = "LockScreen_AdvancedSlider"

.field public static final MOVE_DIST:Ljava/lang/String; = "move_dist"

.field public static final MOVE_X:Ljava/lang/String; = "move_x"

.field public static final MOVE_Y:Ljava/lang/String; = "move_y"

.field private static final NONE_ENDPOINT_DIST:F = 3.4028235E38f

.field public static final SLIDER_STATE_NORMAL:I = 0x0

.field public static final SLIDER_STATE_PRESSED:I = 0x1

.field public static final SLIDER_STATE_REACHED:I = 0x2

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final TAG_NAME:Ljava/lang/String; = "Slider"


# instance fields
.field private mCurrentEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

.field private mEndPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/AdvancedSlider$EndPoint;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsHaptic:Z

.field private mIsKeepStatusAfterLaunch:Z

.field private mMoveDistVar:Lmiui/maml/data/IndexedVariable;

.field private mMoveXVar:Lmiui/maml/data/IndexedVariable;

.field private mMoveYVar:Lmiui/maml/data/IndexedVariable;

.field private mMoving:Z

.field private mOnLaunchListener:Lmiui/maml/elements/AdvancedSlider$OnLaunchListener;

.field private mReboundAnimationController:Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;

.field private mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

.field private mStartPointPressed:Z

.field private mStateVar:Lmiui/maml/data/IndexedVariable;

.field private mTouchOffsetX:F

.field private mTouchOffsetY:F


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 0
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 344
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 345
    invoke-direct {p0, p1}, Lmiui/maml/elements/AdvancedSlider;->load(Lorg/w3c/dom/Element;)V

    .line 346
    return-void
.end method

.method static synthetic access$000(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/AdvancedSlider;

    .prologue
    .line 28
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/maml/elements/AdvancedSlider;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/AdvancedSlider;

    .prologue
    .line 28
    invoke-direct {p0}, Lmiui/maml/elements/AdvancedSlider;->cancelMoving()V

    return-void
.end method

.method static synthetic access$300(Lmiui/maml/elements/AdvancedSlider;FF)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/AdvancedSlider;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AdvancedSlider;->moveStartPoint(FF)V

    return-void
.end method

.method static synthetic access$500(Lmiui/maml/elements/AdvancedSlider;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/AdvancedSlider;

    .prologue
    .line 28
    iget-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPointPressed:Z

    return v0
.end method

.method static synthetic access$600(Lmiui/maml/elements/AdvancedSlider;)F
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/AdvancedSlider;

    .prologue
    .line 28
    iget v0, p0, Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetX:F

    return v0
.end method

.method static synthetic access$700(Lmiui/maml/elements/AdvancedSlider;)F
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/AdvancedSlider;

    .prologue
    .line 28
    iget v0, p0, Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetY:F

    return v0
.end method

.method private cancelMoving()V
    .locals 0

    .prologue
    .line 1208
    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->resetInner()V

    .line 1209
    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->onCancel()V

    .line 1210
    return-void
.end method

.method private checkEndPoint(Lmiui/maml/util/Utils$Point;Lmiui/maml/elements/AdvancedSlider$EndPoint;)Z
    .locals 6
    .param p1, "point"    # Lmiui/maml/util/Utils$Point;
    .param p2, "endPoint"    # Lmiui/maml/elements/AdvancedSlider$EndPoint;

    .prologue
    .line 1146
    const/4 v2, 0x0

    .line 1147
    .local v2, "reached":Z
    iget-wide v4, p1, Lmiui/maml/util/Utils$Point;->x:D

    double-to-float v3, v4

    iget-wide v4, p1, Lmiui/maml/util/Utils$Point;->y:D

    double-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {p2, v3, v4, v5}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->touched(FFZ)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1148
    invoke-virtual {p2}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->getState()Lmiui/maml/elements/AdvancedSlider$State;

    move-result-object v3

    sget-object v4, Lmiui/maml/elements/AdvancedSlider$State;->Reached:Lmiui/maml/elements/AdvancedSlider$State;

    if-eq v3, v4, :cond_2

    .line 1149
    sget-object v3, Lmiui/maml/elements/AdvancedSlider$State;->Reached:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {p2, v3}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->setState(Lmiui/maml/elements/AdvancedSlider$State;)V

    .line 1150
    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;

    .line 1151
    .local v0, "ep":Lmiui/maml/elements/AdvancedSlider$EndPoint;
    if-eq v0, p2, :cond_0

    .line 1152
    sget-object v3, Lmiui/maml/elements/AdvancedSlider$State;->Pressed:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v0, v3}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->setState(Lmiui/maml/elements/AdvancedSlider$State;)V

    goto :goto_0

    .line 1154
    .end local v0    # "ep":Lmiui/maml/elements/AdvancedSlider$EndPoint;
    :cond_1
    iget-object v3, p2, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lmiui/maml/elements/AdvancedSlider;->onReach(Ljava/lang/String;)V

    .line 1156
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v2, 0x1

    .line 1160
    :goto_1
    return v2

    .line 1158
    :cond_3
    sget-object v3, Lmiui/maml/elements/AdvancedSlider$State;->Pressed:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {p2, v3}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->setState(Lmiui/maml/elements/AdvancedSlider$State;)V

    goto :goto_1
.end method

.method private checkTouch(FF)Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v8, 0x0

    .line 1081
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 1082
    .local v3, "minDist":F
    const/4 v4, 0x0

    .line 1083
    .local v4, "point":Lmiui/maml/util/Utils$Point;
    new-instance v7, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;

    invoke-direct {v7, p0, v8}, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;-><init>(Lmiui/maml/elements/AdvancedSlider;Lmiui/maml/elements/AdvancedSlider$1;)V

    .line 1085
    .local v7, "result":Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;
    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/AdvancedSlider$EndPoint;

    .line 1086
    .local v1, "ep":Lmiui/maml/elements/AdvancedSlider$EndPoint;
    # invokes: Lmiui/maml/elements/AdvancedSlider$EndPoint;->getNearestPoint(FF)Lmiui/maml/util/Utils$Point;
    invoke-static {v1, p1, p2}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->access$1000(Lmiui/maml/elements/AdvancedSlider$EndPoint;FF)Lmiui/maml/util/Utils$Point;

    move-result-object v5

    .line 1087
    .local v5, "pt":Lmiui/maml/util/Utils$Point;
    invoke-virtual {v1, v5, p1, p2}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->getTransformedDist(Lmiui/maml/util/Utils$Point;FF)F

    move-result v0

    .line 1088
    .local v0, "di":F
    cmpg-float v9, v0, v3

    if-gez v9, :cond_0

    .line 1089
    move v3, v0

    .line 1090
    move-object v4, v5

    .line 1091
    iput-object v1, v7, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    goto :goto_0

    .line 1094
    .end local v0    # "di":F
    .end local v1    # "ep":Lmiui/maml/elements/AdvancedSlider$EndPoint;
    .end local v5    # "pt":Lmiui/maml/util/Utils$Point;
    :cond_1
    const/4 v6, 0x0

    .line 1097
    .local v6, "reached":Z
    const v9, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v9, v3, v9

    if-gez v9, :cond_6

    .line 1098
    iget-wide v8, v4, Lmiui/maml/util/Utils$Point;->x:D

    double-to-float v8, v8

    iget-wide v10, v4, Lmiui/maml/util/Utils$Point;->y:D

    double-to-float v9, v10

    invoke-direct {p0, v8, v9}, Lmiui/maml/elements/AdvancedSlider;->moveStartPoint(FF)V

    .line 1101
    const v8, 0x7effffff

    cmpg-float v8, v3, v8

    if-gez v8, :cond_4

    .line 1103
    iget-object v8, v7, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    invoke-direct {p0, v4, v8}, Lmiui/maml/elements/AdvancedSlider;->checkEndPoint(Lmiui/maml/util/Utils$Point;Lmiui/maml/elements/AdvancedSlider$EndPoint;)Z

    move-result v6

    .line 1121
    :cond_2
    :goto_1
    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    if-eqz v6, :cond_7

    sget-object v8, Lmiui/maml/elements/AdvancedSlider$State;->Reached:Lmiui/maml/elements/AdvancedSlider$State;

    :goto_2
    invoke-virtual {v9, v8}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->setState(Lmiui/maml/elements/AdvancedSlider$State;)V

    .line 1122
    iget-boolean v8, p0, Lmiui/maml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v8, :cond_3

    .line 1123
    iget-object v10, p0, Lmiui/maml/elements/AdvancedSlider;->mStateVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v6, :cond_8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    :goto_3
    invoke-virtual {v10, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 1125
    :cond_3
    iput-boolean v6, v7, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->reached:Z

    .line 1126
    .end local v7    # "result":Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;
    :goto_4
    return-object v7

    .line 1106
    .restart local v7    # "result":Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;
    :cond_4
    iget-object v8, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/AdvancedSlider$EndPoint;

    .line 1107
    .restart local v1    # "ep":Lmiui/maml/elements/AdvancedSlider$EndPoint;
    # getter for: Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static {v1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v8

    if-nez v8, :cond_5

    .line 1109
    invoke-direct {p0, v4, v1}, Lmiui/maml/elements/AdvancedSlider;->checkEndPoint(Lmiui/maml/util/Utils$Point;Lmiui/maml/elements/AdvancedSlider$EndPoint;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1110
    iput-object v1, v7, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    goto :goto_1

    .line 1116
    .end local v1    # "ep":Lmiui/maml/elements/AdvancedSlider$EndPoint;
    :cond_6
    const-string v9, "LockScreen_AdvancedSlider"

    const-string v10, "unlock touch canceled due to exceeding tollerance"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    const-string v10, "cancel"

    invoke-virtual {v9, v10}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->performAction(Ljava/lang/String;)V

    move-object v7, v8

    .line 1118
    goto :goto_4

    .line 1121
    :cond_7
    sget-object v8, Lmiui/maml/elements/AdvancedSlider$State;->Pressed:Lmiui/maml/elements/AdvancedSlider$State;

    goto :goto_2

    .line 1123
    :cond_8
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    goto :goto_3
.end method

.method private doLaunch(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Z
    .locals 3
    .param p1, "endPoint"    # Lmiui/maml/elements/AdvancedSlider$EndPoint;

    .prologue
    .line 1165
    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    const-string v2, "launch"

    invoke-virtual {v1, v2}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->performAction(Ljava/lang/String;)V

    .line 1166
    const-string v1, "launch"

    invoke-virtual {p1, v1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->performAction(Ljava/lang/String;)V

    .line 1167
    const/4 v0, 0x0

    .line 1168
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    if-eqz v1, :cond_0

    .line 1169
    iget-object v1, p1, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    invoke-virtual {v1}, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->perform()Landroid/content/Intent;

    move-result-object v0

    .line 1171
    :cond_0
    iget-object v1, p1, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mName:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lmiui/maml/elements/AdvancedSlider;->onLaunch(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 4
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v3, 0x1

    .line 349
    if-nez p1, :cond_0

    .line 368
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v0, :cond_1

    .line 353
    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mStateVar:Lmiui/maml/data/IndexedVariable;

    .line 354
    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "move_x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mMoveXVar:Lmiui/maml/data/IndexedVariable;

    .line 355
    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "move_y"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mMoveYVar:Lmiui/maml/data/IndexedVariable;

    .line 356
    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "move_dist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mMoveDistVar:Lmiui/maml/data/IndexedVariable;

    .line 359
    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mReboundController:Lmiui/maml/elements/AdvancedSlider$InterpolatorController;

    if-eqz v0, :cond_2

    .line 360
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mReboundController:Lmiui/maml/elements/AdvancedSlider$InterpolatorController;

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;

    .line 366
    :goto_1
    const-string v0, "haptic"

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/AdvancedSlider;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider;->mIsHaptic:Z

    .line 367
    const-string v0, "keepStatusAfterLaunch"

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/AdvancedSlider;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider;->mIsKeepStatusAfterLaunch:Z

    goto/16 :goto_0

    .line 362
    :cond_2
    new-instance v0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;

    invoke-direct {v0, p0, p1}, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;-><init>(Lmiui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;

    .line 363
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->addPreTicker(Lmiui/maml/elements/ITicker;)V

    goto :goto_1
.end method

.method private moveStartPoint(FF)V
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1130
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v6}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    move-result v6

    sub-float/2addr p1, v6

    .line 1131
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v6}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    move-result v6

    sub-float/2addr p2, v6

    .line 1133
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v6, p1, p2}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->moveTo(FF)V

    .line 1135
    iget-boolean v6, p0, Lmiui/maml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v6, :cond_0

    .line 1136
    float-to-double v6, p1

    invoke-virtual {p0, v6, v7}, Lmiui/maml/elements/AdvancedSlider;->descale(D)D

    move-result-wide v2

    .line 1137
    .local v2, "move_x":D
    float-to-double v6, p2

    invoke-virtual {p0, v6, v7}, Lmiui/maml/elements/AdvancedSlider;->descale(D)D

    move-result-wide v4

    .line 1138
    .local v4, "move_y":D
    mul-double v6, v2, v2

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 1139
    .local v0, "move_dist":D
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider;->mMoveXVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v6, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 1140
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider;->mMoveYVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v6, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 1141
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider;->mMoveDistVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v6, v0, v1}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 1143
    .end local v0    # "move_dist":D
    .end local v2    # "move_x":D
    .end local v4    # "move_y":D
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 965
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->finish()V

    .line 967
    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->resetInner()V

    .line 968
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 958
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->init()V

    .line 959
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;

    invoke-virtual {v0}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->init()V

    .line 960
    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->resetInner()V

    .line 961
    return-void
.end method

.method protected onCancel()V
    .locals 0

    .prologue
    .line 1182
    return-void
.end method

.method protected onCreateChild(Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;
    .locals 3
    .param p1, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 372
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, "tag":Ljava/lang/String;
    const-string v2, "StartPoint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    new-instance v0, Lmiui/maml/elements/AdvancedSlider$StartPoint;

    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v0, p0, p1, v2}, Lmiui/maml/elements/AdvancedSlider$StartPoint;-><init>(Lmiui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    .line 383
    :goto_0
    return-object v0

    .line 375
    :cond_0
    const-string v2, "EndPoint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 376
    new-instance v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;

    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v0, p0, p1, v2}, Lmiui/maml/elements/AdvancedSlider$EndPoint;-><init>(Lmiui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 377
    .local v0, "endPoint":Lmiui/maml/elements/AdvancedSlider$EndPoint;
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 378
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    .line 380
    :cond_1
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 383
    .end local v0    # "endPoint":Lmiui/maml/elements/AdvancedSlider$EndPoint;
    :cond_2
    invoke-super {p0, p1}, Lmiui/maml/elements/ElementGroup;->onCreateChild(Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    goto :goto_0
.end method

.method protected onLaunch(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1201
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mOnLaunchListener:Lmiui/maml/elements/AdvancedSlider$OnLaunchListener;

    if-eqz v0, :cond_0

    .line 1202
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mOnLaunchListener:Lmiui/maml/elements/AdvancedSlider$OnLaunchListener;

    invoke-interface {v0, p1}, Lmiui/maml/elements/AdvancedSlider$OnLaunchListener;->onLaunch(Ljava/lang/String;)Z

    move-result v0

    .line 1204
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider;->mIsKeepStatusAfterLaunch:Z

    goto :goto_0
.end method

.method protected onMove(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1069
    return-void
.end method

.method protected onReach(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1193
    iget-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider;->mIsHaptic:Z

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mRoot:Lmiui/maml/ScreenElementRoot;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->haptic(I)V

    .line 1196
    :cond_0
    return-void
.end method

.method protected onRelease()V
    .locals 2

    .prologue
    .line 1186
    iget-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider;->mIsHaptic:Z

    if-eqz v0, :cond_0

    .line 1187
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mRoot:Lmiui/maml/ScreenElementRoot;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->haptic(I)V

    .line 1189
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 1175
    iget-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider;->mIsHaptic:Z

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mRoot:Lmiui/maml/ScreenElementRoot;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->haptic(I)V

    .line 1178
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 978
    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->isVisible()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1065
    :cond_0
    :goto_0
    return v7

    .line 981
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 982
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 984
    .local v6, "y":F
    const/4 v4, 0x0

    .line 985
    .local v4, "ret":Z
    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->getAbsoluteLeft()F

    move-result v9

    sub-float/2addr v5, v9

    .line 986
    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->getAbsoluteTop()F

    move-result v9

    sub-float/2addr v6, v9

    .line 987
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 1065
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lmiui/maml/elements/ElementGroup;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v9

    if-nez v9, :cond_3

    if-eqz v4, :cond_0

    iget-boolean v9, p0, Lmiui/maml/elements/AdvancedSlider;->mInterceptTouch:Z

    if-eqz v9, :cond_0

    :cond_3
    move v7, v8

    goto :goto_0

    .line 989
    :pswitch_0
    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v9, v5, v6, v7}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->touched(FFZ)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 990
    iput-boolean v8, p0, Lmiui/maml/elements/AdvancedSlider;->mMoving:Z

    .line 991
    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v9}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    move-result v9

    sub-float v9, v5, v9

    iput v9, p0, Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetX:F

    .line 992
    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v9}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    move-result v9

    sub-float v9, v6, v9

    iput v9, p0, Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetY:F

    .line 993
    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;

    invoke-virtual {v9}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 994
    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;

    invoke-virtual {v9}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->stopRunning()V

    .line 995
    iget v9, p0, Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetX:F

    iget-object v10, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v10}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getOffsetX()F

    move-result v10

    sub-float/2addr v9, v10

    iput v9, p0, Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetX:F

    .line 996
    iget v9, p0, Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetY:F

    iget-object v10, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v10}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getOffsetY()F

    move-result v10

    sub-float/2addr v9, v10

    iput v9, p0, Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetY:F

    .line 998
    :cond_4
    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    sget-object v10, Lmiui/maml/elements/AdvancedSlider$State;->Pressed:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v9, v10}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->setState(Lmiui/maml/elements/AdvancedSlider$State;)V

    .line 999
    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;

    .line 1000
    .local v0, "ep":Lmiui/maml/elements/AdvancedSlider$EndPoint;
    sget-object v9, Lmiui/maml/elements/AdvancedSlider$State;->Pressed:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v0, v9}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->setState(Lmiui/maml/elements/AdvancedSlider$State;)V

    goto :goto_2

    .line 1002
    .end local v0    # "ep":Lmiui/maml/elements/AdvancedSlider$EndPoint;
    :cond_5
    iput-boolean v8, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPointPressed:Z

    .line 1006
    iget-boolean v9, p0, Lmiui/maml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v9, :cond_6

    .line 1007
    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mStateVar:Lmiui/maml/data/IndexedVariable;

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v9, v10, v11}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 1009
    :cond_6
    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;

    invoke-virtual {v9}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->init()V

    .line 1010
    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->onStart()V

    .line 1011
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 1015
    .end local v1    # "i$":Ljava/util/Iterator;
    :pswitch_1
    iget-boolean v9, p0, Lmiui/maml/elements/AdvancedSlider;->mMoving:Z

    if-eqz v9, :cond_2

    .line 1016
    invoke-direct {p0, v5, v6}, Lmiui/maml/elements/AdvancedSlider;->checkTouch(FF)Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;

    move-result-object v3

    .line 1017
    .local v3, "result":Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;
    if-eqz v3, :cond_7

    .line 1018
    iget-object v9, v3, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    iput-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mCurrentEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    .line 1019
    invoke-virtual {p0, v5, v6}, Lmiui/maml/elements/AdvancedSlider;->onMove(FF)V

    .line 1025
    :goto_3
    const/4 v4, 0x1

    .line 1026
    goto/16 :goto_1

    .line 1021
    :cond_7
    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;

    iget-object v10, p0, Lmiui/maml/elements/AdvancedSlider;->mCurrentEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    invoke-virtual {v9, v10}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->start(Lmiui/maml/elements/AdvancedSlider$EndPoint;)V

    .line 1022
    iput-boolean v7, p0, Lmiui/maml/elements/AdvancedSlider;->mMoving:Z

    .line 1023
    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->onRelease()V

    goto :goto_3

    .line 1029
    .end local v3    # "result":Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;
    :pswitch_2
    const/4 v2, 0x0

    .line 1030
    .local v2, "keepStatus":Z
    iget-boolean v9, p0, Lmiui/maml/elements/AdvancedSlider;->mMoving:Z

    if-eqz v9, :cond_2

    .line 1031
    const-string v9, "LockScreen_AdvancedSlider"

    const-string v10, "unlock touch up"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    invoke-direct {p0, v5, v6}, Lmiui/maml/elements/AdvancedSlider;->checkTouch(FF)Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;

    move-result-object v3

    .line 1033
    .restart local v3    # "result":Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;
    if-eqz v3, :cond_9

    .line 1034
    iget-boolean v9, v3, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->reached:Z

    if-eqz v9, :cond_b

    .line 1035
    iget-object v9, v3, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    invoke-direct {p0, v9}, Lmiui/maml/elements/AdvancedSlider;->doLaunch(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Z

    move-result v2

    .line 1041
    :cond_8
    :goto_4
    iget-object v9, v3, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    iput-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mCurrentEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    .line 1044
    :cond_9
    iput-boolean v7, p0, Lmiui/maml/elements/AdvancedSlider;->mMoving:Z

    .line 1045
    if-nez v2, :cond_a

    .line 1046
    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;

    iget-object v10, p0, Lmiui/maml/elements/AdvancedSlider;->mCurrentEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    invoke-virtual {v9, v10}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->start(Lmiui/maml/elements/AdvancedSlider$EndPoint;)V

    .line 1048
    :cond_a
    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->onRelease()V

    .line 1049
    const/4 v4, 0x1

    .line 1050
    goto/16 :goto_1

    .line 1037
    :cond_b
    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    const-string v10, "release"

    invoke-virtual {v9, v10}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->performAction(Ljava/lang/String;)V

    .line 1038
    iget-object v9, v3, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    if-eqz v9, :cond_8

    .line 1039
    iget-object v9, v3, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    const-string v10, "release"

    invoke-virtual {v9, v10}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->performAction(Ljava/lang/String;)V

    goto :goto_4

    .line 1054
    .end local v2    # "keepStatus":Z
    .end local v3    # "result":Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;
    :pswitch_3
    iget-boolean v9, p0, Lmiui/maml/elements/AdvancedSlider;->mMoving:Z

    if-eqz v9, :cond_2

    .line 1055
    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;

    invoke-virtual {v9, v10}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->start(Lmiui/maml/elements/AdvancedSlider$EndPoint;)V

    .line 1056
    iput-object v10, p0, Lmiui/maml/elements/AdvancedSlider;->mCurrentEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    .line 1057
    iput-boolean v7, p0, Lmiui/maml/elements/AdvancedSlider;->mMoving:Z

    .line 1058
    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->onRelease()V

    .line 1059
    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    const-string v10, "cancel"

    invoke-virtual {v9, v10}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->performAction(Ljava/lang/String;)V

    .line 1060
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 987
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 972
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->pause()V

    .line 973
    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->resetInner()V

    .line 974
    return-void
.end method

.method public reset(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 1234
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;->reset(J)V

    .line 1235
    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->resetInner()V

    .line 1236
    return-void
.end method

.method protected resetInner()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    .line 1213
    iget-boolean v2, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPointPressed:Z

    if-eqz v2, :cond_2

    .line 1214
    iput-boolean v6, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPointPressed:Z

    .line 1215
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v2, v3, v3}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->moveTo(FF)V

    .line 1216
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    sget-object v3, Lmiui/maml/elements/AdvancedSlider$State;->Normal:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v2, v3}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->setState(Lmiui/maml/elements/AdvancedSlider$State;)V

    .line 1217
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;

    .line 1218
    .local v0, "ep":Lmiui/maml/elements/AdvancedSlider$EndPoint;
    sget-object v2, Lmiui/maml/elements/AdvancedSlider$State;->Normal:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v0, v2}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->setState(Lmiui/maml/elements/AdvancedSlider$State;)V

    goto :goto_0

    .line 1221
    .end local v0    # "ep":Lmiui/maml/elements/AdvancedSlider$EndPoint;
    :cond_0
    iget-boolean v2, p0, Lmiui/maml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v2, :cond_1

    .line 1222
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mMoveXVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v2, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 1223
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mMoveYVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v2, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 1224
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mMoveDistVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v2, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 1225
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mStateVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v2, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 1227
    :cond_1
    iput-boolean v6, p0, Lmiui/maml/elements/AdvancedSlider;->mMoving:Z

    .line 1228
    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->requestUpdate()V

    .line 1230
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public setOnLaunchListener(Lmiui/maml/elements/AdvancedSlider$OnLaunchListener;)V
    .locals 0
    .param p1, "l"    # Lmiui/maml/elements/AdvancedSlider$OnLaunchListener;

    .prologue
    .line 387
    iput-object p1, p0, Lmiui/maml/elements/AdvancedSlider;->mOnLaunchListener:Lmiui/maml/elements/AdvancedSlider$OnLaunchListener;

    .line 388
    return-void
.end method
