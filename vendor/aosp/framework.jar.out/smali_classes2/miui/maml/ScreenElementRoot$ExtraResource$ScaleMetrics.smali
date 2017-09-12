.class Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
.super Ljava/lang/Object;
.source "ScreenElementRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ScreenElementRoot$ExtraResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScaleMetrics"
.end annotation


# instance fields
.field mDensity:I

.field mScale:F

.field mScreenWidth:I

.field mSizeType:I

.field final synthetic this$0:Lmiui/maml/ScreenElementRoot$ExtraResource;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot$ExtraResource;)V
    .locals 1

    .prologue
    .line 725
    iput-object p1, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->this$0:Lmiui/maml/ScreenElementRoot$ExtraResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 723
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    .line 726
    return-void
.end method

.method public constructor <init>(Lmiui/maml/ScreenElementRoot$ExtraResource;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V
    .locals 8
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "type"    # Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 728
    iput-object p1, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->this$0:Lmiui/maml/ScreenElementRoot$ExtraResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 723
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    .line 730
    :try_start_0
    const-string v5, ":"

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 731
    .local v1, "info":[Ljava/lang/String;
    sget-object v5, Lmiui/maml/ScreenElementRoot$3;->$SwitchMap$miui$maml$ScreenElementRoot$ExtraResource$MetricsType:[I

    invoke-virtual {p3}, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 782
    :cond_0
    :goto_0
    return-void

    .line 733
    :pswitch_0
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    .line 734
    iget v4, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    invoke-static {v4}, Lmiui/maml/ResourceManager;->translateDensity(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x1e0

    div-int/lit16 v4, v4, 0xf0

    iput v4, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    .line 736
    array-length v4, v1

    if-le v4, v3, :cond_0

    .line 737
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 778
    .end local v1    # "info":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 779
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "ScreenElementRoot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "format error of string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "invalid format"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 741
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "info":[Ljava/lang/String;
    :pswitch_1
    const/4 v4, 0x0

    :try_start_1
    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    .line 742
    iget v4, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    mul-int/lit16 v4, v4, 0xf0

    div-int/lit16 v4, v4, 0x1e0

    invoke-static {v4}, Lmiui/maml/ResourceManager;->retranslateDensity(I)I

    move-result v4

    iput v4, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    .line 744
    array-length v4, v1

    if-le v4, v3, :cond_0

    .line 745
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    goto :goto_0

    .line 750
    :pswitch_2
    const/4 v5, 0x0

    aget-object v5, v1, v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 751
    .local v2, "metrics":[Ljava/lang/String;
    const/4 v5, 0x0

    iput v5, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    .line 752
    array-length v5, v2

    if-ne v5, v3, :cond_5

    .line 753
    const/4 v5, 0x0

    aget-object v5, v2, v5

    const-string v6, "sw"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 754
    const/4 v5, 0x0

    aget-object v5, v2, v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    .line 755
    iget v5, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    mul-int/lit16 v5, v5, 0xf0

    div-int/lit16 v5, v5, 0x1e0

    invoke-static {v5}, Lmiui/maml/ResourceManager;->retranslateDensity(I)I

    move-result v5

    iput v5, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    .line 772
    :cond_1
    :goto_1
    array-length v5, v1

    if-le v5, v3, :cond_2

    .line 773
    array-length v5, v1

    if-ne v5, v4, :cond_7

    :goto_2
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    .line 775
    :cond_2
    invoke-virtual {p0, v1}, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->onParseInfo([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 757
    :cond_3
    const/4 v5, 0x0

    aget-object v5, v2, v5

    const-string v6, "den"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 758
    const/4 v5, 0x0

    aget-object v5, v2, v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    .line 759
    iget v5, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    invoke-static {v5}, Lmiui/maml/ResourceManager;->translateDensity(I)I

    move-result v5

    mul-int/lit16 v5, v5, 0x1e0

    div-int/lit16 v5, v5, 0xf0

    iput v5, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    goto :goto_1

    .line 762
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 763
    :cond_5
    array-length v5, v2

    if-lt v5, v4, :cond_6

    .line 764
    const/4 v5, 0x0

    aget-object v5, v2, v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    .line 765
    const/4 v5, 0x1

    aget-object v5, v2, v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    .line 766
    array-length v5, v2

    if-ne v5, v7, :cond_1

    .line 767
    const/4 v5, 0x2

    aget-object v5, v2, v5

    # invokes: Lmiui/maml/ScreenElementRoot$ExtraResource;->parseSizeType(Ljava/lang/String;)I
    invoke-static {v5}, Lmiui/maml/ScreenElementRoot$ExtraResource;->access$100(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    goto :goto_1

    .line 770
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_7
    move v3, v4

    .line 773
    goto/16 :goto_2

    .line 731
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onParseInfo([Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # [Ljava/lang/String;

    .prologue
    .line 785
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScaleMetrics sw:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " den:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sizeType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scale:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
