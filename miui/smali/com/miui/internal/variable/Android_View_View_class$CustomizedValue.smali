.class public Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/Android_View_View_class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomizedValue"
.end annotation


# instance fields
.field public mHasInitViewSequenceStates:Z

.field public mHorizontalState:I

.field public mTagChildrenSequenceState:Z

.field public mVerticalState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput v0, p0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mHorizontalState:I

    .line 187
    iput v0, p0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mVerticalState:I

    .line 189
    iput-boolean v0, p0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mTagChildrenSequenceState:Z

    .line 190
    iput-boolean v0, p0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mHasInitViewSequenceStates:Z

    return-void
.end method
