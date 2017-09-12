.class Lmiui/maml/ScreenElementRoot$ExtraResource;
.super Ljava/lang/Object;
.source "ScreenElementRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ScreenElementRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtraResource"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;,
        Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;,
        Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
    }
.end annotation


# instance fields
.field private mResources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private mScales:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;I)V
    .locals 6
    .param p1, "root"    # Lorg/w3c/dom/Element;
    .param p2, "defaultDen"    # I

    .prologue
    const/4 v5, 0x0

    .line 847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 828
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    .line 829
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    .line 848
    new-instance v0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;

    invoke-direct {v0, p0}, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;-><init>(Lmiui/maml/ScreenElementRoot$ExtraResource;)V

    .line 849
    .local v0, "defaultRes":Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;
    iput p2, v0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mDensity:I

    .line 850
    invoke-static {p2}, Lmiui/maml/ResourceManager;->translateDensity(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x1e0

    div-int/lit16 v2, v2, 0xf0

    iput v2, v0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mScreenWidth:I

    .line 852
    iput v5, v0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mSizeType:I

    .line 853
    const/4 v2, 0x0

    iput-object v2, v0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mPath:Ljava/lang/String;

    .line 854
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mScale:F

    .line 855
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    const-string v3, "extraResourcesDensity"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->DEN:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-direct {p0, v2, v3, v4}, Lmiui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 858
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    const-string v3, "extraResourcesScreenWidth"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-direct {p0, v2, v3, v4}, Lmiui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 859
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    const-string v3, "extraResources"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW_DEN:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-direct {p0, v2, v3, v4}, Lmiui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 861
    new-instance v1, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    invoke-direct {v1, p0}, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;-><init>(Lmiui/maml/ScreenElementRoot$ExtraResource;)V

    .line 862
    .local v1, "defaultScale":Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
    iput p2, v1, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    .line 863
    invoke-static {p2}, Lmiui/maml/ResourceManager;->translateDensity(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x1e0

    div-int/lit16 v2, v2, 0xf0

    iput v2, v1, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    .line 865
    iput v5, v1, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    .line 866
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    .line 867
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    const-string v3, "extraScaleByDensity"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->DEN:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-direct {p0, v2, v3, v4}, Lmiui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 870
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    const-string v3, "extraScaleByScreenWidth"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-direct {p0, v2, v3, v4}, Lmiui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 871
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    const-string v3, "extraScales"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW_DEN:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-direct {p0, v2, v3, v4}, Lmiui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 872
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 718
    invoke-static {p0}, Lmiui/maml/ScreenElementRoot$ExtraResource;->parseSizeType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V
    .locals 9
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "type"    # Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;",
            ">;",
            "Ljava/lang/String;",
            "Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 875
    .local p1, "metrics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 876
    const-string v6, ","

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 877
    .local v4, "resources":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 879
    .local v5, "str":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    if-ne p1, v6, :cond_1

    .line 880
    new-instance v6, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7, p3}, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;-><init>(Lmiui/maml/ScreenElementRoot$ExtraResource;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 881
    :cond_1
    iget-object v6, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    if-ne p1, v6, :cond_0

    .line 882
    new-instance v6, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7, p3}, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;-><init>(Lmiui/maml/ScreenElementRoot$ExtraResource;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 884
    :catch_0
    move-exception v1

    .line 885
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "ScreenElementRoot"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "format error of attribute: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 889
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "resources":[Ljava/lang/String;
    .end local v5    # "str":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static parseSizeType(Ljava/lang/String;)I
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 892
    const/4 v0, 0x0

    .line 893
    .local v0, "size":I
    const-string v1, "small"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 894
    const/4 v0, 0x1

    .line 902
    :cond_0
    :goto_0
    return v0

    .line 895
    :cond_1
    const-string v1, "normal"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 896
    const/4 v0, 0x2

    goto :goto_0

    .line 897
    :cond_2
    const-string v1, "large"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 898
    const/4 v0, 0x3

    goto :goto_0

    .line 899
    :cond_3
    const-string/jumbo v1, "xlarge"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 900
    const/4 v0, 0x4

    goto :goto_0
.end method


# virtual methods
.method findMetrics(IIILjava/util/ArrayList;)Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
    .locals 9
    .param p1, "targetDen"    # I
    .param p2, "targetSw"    # I
    .param p3, "targetSizeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;",
            ">;)",
            "Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;"
        }
    .end annotation

    .prologue
    .line 917
    .local p4, "metrics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;>;"
    const/4 v7, 0x0

    .line 918
    .local v7, "result":Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
    const v5, 0x7fffffff

    .line 919
    .local v5, "minDiffDen":I
    const v6, 0x7fffffff

    .line 920
    .local v6, "minDiffSw":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 921
    .local v0, "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;>;"
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    .line 923
    .local v4, "m":Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
    iget v8, v4, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    if-eqz v8, :cond_1

    iget v8, v4, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    if-ne v8, p3, :cond_0

    .line 926
    :cond_1
    iget v8, v4, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    sub-int v8, p1, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 927
    .local v1, "diffDen":I
    if-ge v1, v5, :cond_2

    .line 928
    move v5, v1

    .line 929
    iget v8, v4, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    sub-int v8, p2, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 930
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 931
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 932
    :cond_2
    if-ne v1, v5, :cond_0

    .line 933
    iget v8, v4, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    sub-int v8, p2, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 934
    .local v2, "diffSw":I
    if-ge v2, v6, :cond_3

    .line 935
    move v6, v2

    .line 936
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 937
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 938
    :cond_3
    if-ne v2, v6, :cond_0

    .line 939
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 943
    .end local v1    # "diffDen":I
    .end local v2    # "diffSw":I
    .end local v4    # "m":Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    .line 944
    .restart local v4    # "m":Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
    iget v8, v4, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    if-ne v8, p3, :cond_7

    .line 945
    move-object v7, v4

    .line 951
    .end local v4    # "m":Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
    :cond_6
    return-object v7

    .line 947
    .restart local v4    # "m":Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
    :cond_7
    iget v8, v4, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    if-nez v8, :cond_5

    .line 948
    move-object v7, v4

    goto :goto_1
.end method

.method public findResource(III)Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;
    .locals 1
    .param p1, "targetDen"    # I
    .param p2, "targetSw"    # I
    .param p3, "targetSizeType"    # I

    .prologue
    .line 907
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/maml/ScreenElementRoot$ExtraResource;->findMetrics(IIILjava/util/ArrayList;)Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    move-result-object v0

    check-cast v0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;

    return-object v0
.end method

.method public findScale(III)Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
    .locals 1
    .param p1, "targetDen"    # I
    .param p2, "targetSw"    # I
    .param p3, "targetSizeType"    # I

    .prologue
    .line 912
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/maml/ScreenElementRoot$ExtraResource;->findMetrics(IIILjava/util/ArrayList;)Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    move-result-object v0

    return-object v0
.end method
