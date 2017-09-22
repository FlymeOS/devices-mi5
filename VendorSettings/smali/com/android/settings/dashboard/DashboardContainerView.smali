.class public Lcom/android/vendorsettings/dashboard/DashboardContainerView;
.super Landroid/view/ViewGroup;
.source "DashboardContainerView.java"


# instance fields
.field private UF:F

.field private UG:F

.field private UH:I

.field private UI:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 38
    const v1, 0x7f0b0073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/vendorsettings/dashboard/DashboardContainerView;->UF:F

    .line 39
    const v1, 0x7f0b0074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/vendorsettings/dashboard/DashboardContainerView;->UG:F

    .line 40
    const v1, 0x7f0f0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/dashboard/DashboardContainerView;->UI:I

    .line 41
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 14

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/vendorsettings/dashboard/DashboardContainerView;->getChildCount()I

    move-result v7

    .line 89
    invoke-virtual {p0}, Lcom/android/vendorsettings/dashboard/DashboardContainerView;->isLayoutRtl()Z

    move-result v8

    .line 90
    invoke-virtual {p0}, Lcom/android/vendorsettings/dashboard/DashboardContainerView;->getWidth()I

    move-result v9

    .line 92
    invoke-virtual {p0}, Lcom/android/vendorsettings/dashboard/DashboardContainerView;->getPaddingStart()I

    move-result v2

    .line 93
    invoke-virtual {p0}, Lcom/android/vendorsettings/dashboard/DashboardContainerView;->getPaddingTop()I

    move-result v1

    .line 94
    const/4 v3, 0x0

    .line 96
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_4

    .line 97
    invoke-virtual {p0, v6}, Lcom/android/vendorsettings/dashboard/DashboardContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/dashboard/c;

    .line 98
    invoke-virtual {v0}, Lcom/android/vendorsettings/dashboard/c;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 99
    invoke-virtual {v0}, Lcom/android/vendorsettings/dashboard/c;->getVisibility()I

    move-result v5

    const/16 v10, 0x8

    if-ne v5, v10, :cond_0

    move v0, v3

    .line 96
    :goto_1
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v3, v0

    goto :goto_0

    .line 103
    :cond_0
    iget v5, p0, Lcom/android/vendorsettings/dashboard/DashboardContainerView;->UI:I

    rem-int v5, v3, v5

    .line 104
    invoke-virtual {v0}, Lcom/android/vendorsettings/dashboard/c;->getColumnSpan()I

    move-result v10

    .line 106
    iget v11, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 107
    iget v12, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 109
    iget v4, p0, Lcom/android/vendorsettings/dashboard/DashboardContainerView;->UI:I

    div-int v4, v3, v4

    .line 111
    iget v13, p0, Lcom/android/vendorsettings/dashboard/DashboardContainerView;->UH:I

    add-int/lit8 v13, v13, -0x1

    if-ne v4, v13, :cond_1

    .line 112
    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lcom/android/vendorsettings/dashboard/c;->aG(Z)V

    .line 116
    :cond_1
    add-int/2addr v5, v10

    iget v10, p0, Lcom/android/vendorsettings/dashboard/DashboardContainerView;->UI:I

    if-le v5, v10, :cond_5

    .line 117
    invoke-virtual {p0}, Lcom/android/vendorsettings/dashboard/DashboardContainerView;->getPaddingStart()I

    move-result v5

    .line 118
    int-to-float v1, v1

    int-to-float v2, v12

    iget v10, p0, Lcom/android/vendorsettings/dashboard/DashboardContainerView;->UG:F

    add-float/2addr v2, v10

    add-float/2addr v1, v2

    float-to-int v2, v1

    .line 119
    add-int/lit8 v1, v4, 0x1

    move v4, v2

    move v2, v5

    move v5, v1

    .line 122
    :goto_2
    if-eqz v8, :cond_2

    sub-int v1, v9, v2

    sub-int/2addr v1, v11

    .line 123
    :goto_3
    add-int v10, v1, v11

    .line 126
    add-int v13, v4, v12

    .line 129
    invoke-virtual {v0, v1, v4, v10, v13}, Lcom/android/vendorsettings/dashboard/c;->layout(IIII)V

    .line 133
    invoke-virtual {v0}, Lcom/android/vendorsettings/dashboard/c;->getColumnSpan()I

    move-result v0

    add-int/2addr v0, v3

    .line 134
    add-int/lit8 v1, v5, 0x1

    iget v3, p0, Lcom/android/vendorsettings/dashboard/DashboardContainerView;->UI:I

    mul-int/2addr v1, v3

    if-ge v0, v1, :cond_3

    .line 135
    int-to-float v1, v2

    int-to-float v2, v11

    iget v3, p0, Lcom/android/vendorsettings/dashboard/DashboardContainerView;->UF:F

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    move v2, v1

    move v1, v4

    goto :goto_1

    :cond_2
    move v1, v2

    .line 122
    goto :goto_3

    .line 137
    :cond_3
    invoke-virtual {p0}, Lcom/android/vendorsettings/dashboard/DashboardContainerView;->getPaddingStart()I

    move-result v2

    .line 138
    int-to-float v1, v4

    int-to-float v3, v12

    iget v4, p0, Lcom/android/vendorsettings/dashboard/DashboardContainerView;->UG:F

    add-float/2addr v3, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    goto :goto_1

    .line 141
    :cond_4
    return-void

    :cond_5
    move v5, v4

    move v4, v1

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 13

    .prologue
    .line 45
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 46
    invoke-virtual {p0}, Lcom/android/vendorsettings/dashboard/DashboardContainerView;->getPaddingLeft()I

    move-result v0

    sub-int v0, v4, v0

    invoke-virtual {p0}, Lcom/android/vendorsettings/dashboard/DashboardContainerView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/vendorsettings/dashboard/DashboardContainerView;->UI:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/vendorsettings/dashboard/DashboardContainerView;->UF:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 48
    int-to-float v0, v0

    iget v1, p0, Lcom/android/vendorsettings/dashboard/DashboardContainerView;->UI:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v5, v0

    .line 49
    invoke-virtual {p0}, Lcom/android/vendorsettings/dashboard/DashboardContainerView;->getChildCount()I

    move-result v6

    .line 51
    const/4 v1, 0x0

    .line 52
    const/4 v2, 0x0

    .line 54
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v6, :cond_1

    .line 55
    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/dashboard/DashboardContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/dashboard/c;

    .line 56
    invoke-virtual {v0}, Lcom/android/vendorsettings/dashboard/c;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    move v0, v2

    .line 54
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {v0}, Lcom/android/vendorsettings/dashboard/c;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 61
    invoke-virtual {v0}, Lcom/android/vendorsettings/dashboard/c;->getColumnSpan()I

    move-result v8

    .line 62
    int-to-float v9, v8

    mul-float/2addr v9, v5

    add-int/lit8 v10, v8, -0x1

    int-to-float v10, v10

    iget v11, p0, Lcom/android/vendorsettings/dashboard/DashboardContainerView;->UF:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 65
    const/4 v9, 0x0

    iget v10, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v9, v10}, Lcom/android/vendorsettings/dashboard/DashboardContainerView;->getChildMeasureSpec(III)I

    move-result v9

    .line 66
    const/4 v10, 0x0

    iget v11, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v10, v11}, Lcom/android/vendorsettings/dashboard/DashboardContainerView;->getChildMeasureSpec(III)I

    move-result v10

    .line 67
    invoke-virtual {v0, v9, v10}, Lcom/android/vendorsettings/dashboard/c;->measure(II)V

    .line 70
    if-gtz v1, :cond_2

    .line 71
    invoke-virtual {v0}, Lcom/android/vendorsettings/dashboard/c;->getMeasuredHeight()I

    move-result v0

    .line 74
    :goto_2
    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 76
    add-int v1, v2, v8

    move v12, v1

    move v1, v0

    move v0, v12

    goto :goto_1

    .line 79
    :cond_1
    int-to-float v0, v2

    iget v2, p0, Lcom/android/vendorsettings/dashboard/DashboardContainerView;->UI:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, p0, Lcom/android/vendorsettings/dashboard/DashboardContainerView;->UH:I

    .line 80
    iget v0, p0, Lcom/android/vendorsettings/dashboard/DashboardContainerView;->UH:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/vendorsettings/dashboard/DashboardContainerView;->UH:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/vendorsettings/dashboard/DashboardContainerView;->UG:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/android/vendorsettings/dashboard/DashboardContainerView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/vendorsettings/dashboard/DashboardContainerView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 83
    invoke-virtual {p0, v4, v0}, Lcom/android/vendorsettings/dashboard/DashboardContainerView;->setMeasuredDimension(II)V

    .line 84
    return-void

    :cond_2
    move v0, v1

    goto :goto_2
.end method
