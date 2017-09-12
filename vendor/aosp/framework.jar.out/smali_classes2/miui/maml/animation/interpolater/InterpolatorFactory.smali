.class public Lmiui/maml/animation/interpolater/InterpolatorFactory;
.super Ljava/lang/Object;
.source "InterpolatorFactory.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "InterpolatorFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Landroid/view/animation/Interpolator;
    .locals 15
    .param p0, "easeType"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v13, -0x1

    .line 12
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-object v11

    .line 16
    :cond_1
    const/16 v12, 0x28

    invoke-virtual {p0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 17
    .local v6, "leftBracket":I
    const/16 v12, 0x29

    invoke-virtual {p0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 18
    .local v8, "rightBracket":I
    const/4 v2, 0x0

    .line 19
    .local v2, "firstParam":F
    const/4 v9, 0x0

    .line 20
    .local v9, "secondParam":F
    const/4 v4, 0x0

    .line 21
    .local v4, "hasFirstParam":Z
    const/4 v5, 0x0

    .line 22
    .local v5, "hasSecondParam":Z
    if-eq v6, v13, :cond_3

    if-eq v8, v13, :cond_3

    .line 23
    const/4 v4, 0x1

    .line 24
    add-int/lit8 v12, v6, 0x1

    invoke-virtual {p0, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 26
    .local v7, "params":Ljava/lang/String;
    move-object v3, v7

    .line 27
    .local v3, "firstParamStr":Ljava/lang/String;
    const-string v10, ""

    .line 28
    .local v10, "secondParamStr":Ljava/lang/String;
    const-string v12, ","

    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 29
    .local v0, "comma":I
    if-eq v0, v13, :cond_2

    .line 30
    const/4 v5, 0x1

    .line 31
    const/4 v12, 0x0

    invoke-virtual {v7, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 32
    add-int/lit8 v12, v0, 0x1

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 35
    :cond_2
    :try_start_0
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 36
    if-eqz v5, :cond_3

    .line 37
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 44
    .end local v0    # "comma":I
    .end local v3    # "firstParamStr":Ljava/lang/String;
    .end local v7    # "params":Ljava/lang/String;
    .end local v10    # "secondParamStr":Ljava/lang/String;
    :cond_3
    :goto_1
    const-string v12, "BackEaseIn"

    invoke-virtual {v12, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 45
    new-instance v11, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;-><init>()V

    goto :goto_0

    .line 39
    .restart local v0    # "comma":I
    .restart local v3    # "firstParamStr":Ljava/lang/String;
    .restart local v7    # "params":Ljava/lang/String;
    .restart local v10    # "secondParamStr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 40
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v12, "InterpolatorFactory"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "parse error:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 46
    .end local v0    # "comma":I
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "firstParamStr":Ljava/lang/String;
    .end local v7    # "params":Ljava/lang/String;
    .end local v10    # "secondParamStr":Ljava/lang/String;
    :cond_4
    const-string v12, "BackEaseOut"

    invoke-virtual {v12, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 47
    new-instance v11, Lmiui/maml/animation/interpolater/BackEaseOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/BackEaseOutInterpolater;-><init>()V

    goto :goto_0

    .line 48
    :cond_5
    const-string v12, "BackEaseInOut"

    invoke-virtual {v12, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 49
    new-instance v11, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;-><init>()V

    goto :goto_0

    .line 50
    :cond_6
    const-string v12, "BackEaseIn"

    invoke-virtual {p0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    if-eqz v4, :cond_7

    .line 51
    new-instance v11, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;

    invoke-direct {v11, v2}, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;-><init>(F)V

    goto/16 :goto_0

    .line 52
    :cond_7
    const-string v12, "BackEaseOut"

    invoke-virtual {p0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    if-eqz v4, :cond_8

    .line 53
    new-instance v11, Lmiui/maml/animation/interpolater/BackEaseOutInterpolater;

    invoke-direct {v11, v2}, Lmiui/maml/animation/interpolater/BackEaseOutInterpolater;-><init>(F)V

    goto/16 :goto_0

    .line 54
    :cond_8
    const-string v12, "BackEaseInOut"

    invoke-virtual {p0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    if-eqz v4, :cond_9

    .line 55
    new-instance v11, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;

    invoke-direct {v11, v2}, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;-><init>(F)V

    goto/16 :goto_0

    .line 56
    :cond_9
    const-string v12, "BounceEaseIn"

    invoke-virtual {v12, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 57
    new-instance v11, Lmiui/maml/animation/interpolater/BounceEaseInInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/BounceEaseInInterpolater;-><init>()V

    goto/16 :goto_0

    .line 58
    :cond_a
    const-string v12, "BounceEaseOut"

    invoke-virtual {v12, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 59
    new-instance v11, Lmiui/maml/animation/interpolater/BounceEaseOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/BounceEaseOutInterpolater;-><init>()V

    goto/16 :goto_0

    .line 60
    :cond_b
    const-string v12, "BounceEaseInOut"

    invoke-virtual {v12, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 61
    new-instance v11, Lmiui/maml/animation/interpolater/BounceEaseInOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/BounceEaseInOutInterpolater;-><init>()V

    goto/16 :goto_0

    .line 62
    :cond_c
    const-string v12, "CircEaseIn"

    invoke-virtual {v12, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 63
    new-instance v11, Lmiui/maml/animation/interpolater/CircEaseInInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/CircEaseInInterpolater;-><init>()V

    goto/16 :goto_0

    .line 64
    :cond_d
    const-string v12, "CircEaseOut"

    invoke-virtual {v12, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 65
    new-instance v11, Lmiui/maml/animation/interpolater/CircEaseOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/CircEaseOutInterpolater;-><init>()V

    goto/16 :goto_0

    .line 66
    :cond_e
    const-string v12, "CircEaseInOut"

    invoke-virtual {v12, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 67
    new-instance v11, Lmiui/maml/animation/interpolater/CircEaseInOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/CircEaseInOutInterpolater;-><init>()V

    goto/16 :goto_0

    .line 68
    :cond_f
    const-string v12, "CubicEaseIn"

    invoke-virtual {v12, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 69
    new-instance v11, Lmiui/maml/animation/interpolater/CubicEaseInInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/CubicEaseInInterpolater;-><init>()V

    goto/16 :goto_0

    .line 70
    :cond_10
    const-string v12, "CubicEaseOut"

    invoke-virtual {v12, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 71
    new-instance v11, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    goto/16 :goto_0

    .line 72
    :cond_11
    const-string v12, "CubicEaseInOut"

    invoke-virtual {v12, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 73
    new-instance v11, Lmiui/maml/animation/interpolater/CubicEaseInOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/CubicEaseInOutInterpolater;-><init>()V

    goto/16 :goto_0

    .line 74
    :cond_12
    const-string v12, "ElasticEaseIn"

    invoke-virtual {v12, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 75
    new-instance v11, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;-><init>()V

    goto/16 :goto_0

    .line 76
    :cond_13
    const-string v12, "ElasticEaseOut"

    invoke-virtual {v12, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 77
    new-instance v11, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>()V

    goto/16 :goto_0

    .line 78
    :cond_14
    const-string v12, "ElasticEaseInOut"

    invoke-virtual {v12, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 79
    new-instance v11, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;-><init>()V

    goto/16 :goto_0

    .line 80
    :cond_15
    const-string v12, "ElasticEaseIn"

    invoke-virtual {p0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_16

    if-eqz v5, :cond_16

    .line 81
    new-instance v11, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;

    invoke-direct {v11, v2, v9}, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;-><init>(FF)V

    goto/16 :goto_0

    .line 82
    :cond_16
    const-string v12, "ElasticEaseOut"

    invoke-virtual {p0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_17

    if-eqz v5, :cond_17

    .line 83
    new-instance v11, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    invoke-direct {v11, v2, v9}, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>(FF)V

    goto/16 :goto_0

    .line 84
    :cond_17
    const-string v12, "ElasticEaseInOut"

    invoke-virtual {p0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_18

    if-eqz v5, :cond_18

    .line 85
    new-instance v11, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;

    invoke-direct {v11, v2, v9}, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;-><init>(FF)V

    goto/16 :goto_0

    .line 86
    :cond_18
    const-string v12, "ExpoEaseIn"

    invoke-virtual {v12, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_19

    .line 87
    new-instance v11, Lmiui/maml/animation/interpolater/ExpoEaseInInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/ExpoEaseInInterpolater;-><init>()V

    goto/16 :goto_0

    .line 88
    :cond_19
    const-string v12, "ExpoEaseOut"

    invoke-virtual {v12, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 89
    new-instance v11, Lmiui/maml/animation/interpolater/ExpoEaseOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/ExpoEaseOutInterpolater;-><init>()V

    goto/16 :goto_0

    .line 90
    :cond_1a
    const-string v12, "ExpoEaseInOut"

    invoke-virtual {v12, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 91
    new-instance v11, Lmiui/maml/animation/interpolater/ExpoEaseInOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/ExpoEaseInOutInterpolater;-><init>()V

    goto/16 :goto_0

    .line 92
    :cond_1b
    const-string v12, "QuadEaseIn"

    invoke-virtual {v12, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 93
    new-instance v11, Lmiui/maml/animation/interpolater/QuadEaseInInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/QuadEaseInInterpolater;-><init>()V

    goto/16 :goto_0

    .line 94
    :cond_1c
    const-string v12, "QuadEaseOut"

    invoke-virtual {v12, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1d

    .line 95
    new-instance v11, Lmiui/maml/animation/interpolater/QuadEaseOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/QuadEaseOutInterpolater;-><init>()V

    goto/16 :goto_0

    .line 96
    :cond_1d
    const-string v12, "QuadEaseInOut"

    invoke-virtual {v12, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 97
    new-instance v11, Lmiui/maml/animation/interpolater/QuadEaseInOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/QuadEaseInOutInterpolater;-><init>()V

    goto/16 :goto_0

    .line 98
    :cond_1e
    const-string v12, "QuartEaseIn"

    invoke-virtual {v12, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1f

    .line 99
    new-instance v11, Lmiui/maml/animation/interpolater/QuartEaseInInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/QuartEaseInInterpolater;-><init>()V

    goto/16 :goto_0

    .line 100
    :cond_1f
    const-string v12, "QuartEaseOut"

    invoke-virtual {v12, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_20

    .line 101
    new-instance v11, Lmiui/maml/animation/interpolater/QuartEaseOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/QuartEaseOutInterpolater;-><init>()V

    goto/16 :goto_0

    .line 102
    :cond_20
    const-string v12, "QuartEaseInOut"

    invoke-virtual {v12, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_21

    .line 103
    new-instance v11, Lmiui/maml/animation/interpolater/QuartEaseInOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/QuartEaseInOutInterpolater;-><init>()V

    goto/16 :goto_0

    .line 104
    :cond_21
    const-string v12, "QuintEaseIn"

    invoke-virtual {v12, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_22

    .line 105
    new-instance v11, Lmiui/maml/animation/interpolater/QuintEaseInInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/QuintEaseInInterpolater;-><init>()V

    goto/16 :goto_0

    .line 106
    :cond_22
    const-string v12, "QuintEaseOut"

    invoke-virtual {v12, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_23

    .line 107
    new-instance v11, Lmiui/maml/animation/interpolater/QuintEaseOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/QuintEaseOutInterpolater;-><init>()V

    goto/16 :goto_0

    .line 108
    :cond_23
    const-string v12, "QuintEaseInOut"

    invoke-virtual {v12, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_24

    .line 109
    new-instance v11, Lmiui/maml/animation/interpolater/QuintEaseInOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/QuintEaseInOutInterpolater;-><init>()V

    goto/16 :goto_0

    .line 110
    :cond_24
    const-string v12, "SineEaseIn"

    invoke-virtual {v12, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_25

    .line 111
    new-instance v11, Lmiui/maml/animation/interpolater/SineEaseInInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/SineEaseInInterpolater;-><init>()V

    goto/16 :goto_0

    .line 112
    :cond_25
    const-string v12, "SineEaseOut"

    invoke-virtual {v12, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_26

    .line 113
    new-instance v11, Lmiui/maml/animation/interpolater/SineEaseOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/SineEaseOutInterpolater;-><init>()V

    goto/16 :goto_0

    .line 114
    :cond_26
    const-string v12, "SineEaseInOut"

    invoke-virtual {v12, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_27

    .line 115
    new-instance v11, Lmiui/maml/animation/interpolater/SineEaseInOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/SineEaseInOutInterpolater;-><init>()V

    goto/16 :goto_0

    .line 116
    :cond_27
    const-string v12, "Linear"

    invoke-virtual {v12, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 117
    new-instance v11, Lmiui/maml/animation/interpolater/LinearInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/LinearInterpolater;-><init>()V

    goto/16 :goto_0
.end method
