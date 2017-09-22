.class Lmiui/widget/NavigationLayout$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NavigationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field public type:I

.field public value:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/util/TypedValue;Landroid/content/res/Resources;)Lmiui/widget/NavigationLayout$b;
    .locals 5

    .prologue
    const v4, 0x3e99999a    # 0.3f

    const/4 v3, 0x1

    .line 1070
    new-instance v0, Lmiui/widget/NavigationLayout$b;

    invoke-direct {v0}, Lmiui/widget/NavigationLayout$b;-><init>()V

    .line 1071
    if-nez p0, :cond_1

    .line 1072
    iput v3, v0, Lmiui/widget/NavigationLayout$b;->type:I

    .line 1073
    iput v4, v0, Lmiui/widget/NavigationLayout$b;->value:F

    .line 1091
    :cond_0
    iput v3, v0, Lmiui/widget/NavigationLayout$b;->type:I

    .line 1092
    iput v4, v0, Lmiui/widget/NavigationLayout$b;->value:F

    .line 1094
    :goto_0
    return-object v0

    .line 1075
    :cond_1
    iget v1, p0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 1076
    iput v3, v0, Lmiui/widget/NavigationLayout$b;->type:I

    .line 1077
    iget v1, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    iput v1, v0, Lmiui/widget/NavigationLayout$b;->value:F

    goto :goto_0

    .line 1079
    :cond_2
    iget v1, p0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 1080
    iput v3, v0, Lmiui/widget/NavigationLayout$b;->type:I

    .line 1081
    invoke-virtual {p0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, v0, Lmiui/widget/NavigationLayout$b;->value:F

    goto :goto_0

    .line 1083
    :cond_3
    iget v1, p0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 1084
    const/4 v1, 0x0

    iput v1, v0, Lmiui/widget/NavigationLayout$b;->type:I

    .line 1085
    iget v1, p0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lmiui/widget/NavigationLayout$b;->value:F

    goto :goto_0
.end method
