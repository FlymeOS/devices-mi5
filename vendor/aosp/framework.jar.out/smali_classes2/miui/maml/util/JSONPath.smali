.class public Lmiui/maml/util/JSONPath;
.super Ljava/lang/Object;
.source "JSONPath.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "JSONPath"


# instance fields
.field private mRoot:Lorg/json/JSONObject;

.field private mRootArray:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "o"    # Lorg/json/JSONArray;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lmiui/maml/util/JSONPath;->mRootArray:Lorg/json/JSONArray;

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lmiui/maml/util/JSONPath;->mRoot:Lorg/json/JSONObject;

    .line 37
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 15
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v14, -0x1

    const/4 v11, 0x0

    .line 44
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    move-object v6, v11

    .line 91
    :cond_0
    :goto_0
    return-object v6

    .line 47
    :cond_1
    const-string v12, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 49
    .local v9, "segs":[Ljava/lang/String;
    iget-object v12, p0, Lmiui/maml/util/JSONPath;->mRoot:Lorg/json/JSONObject;

    if-eqz v12, :cond_2

    iget-object v6, p0, Lmiui/maml/util/JSONPath;->mRoot:Lorg/json/JSONObject;

    .line 50
    .local v6, "obj":Ljava/lang/Object;
    :goto_1
    if-nez v6, :cond_3

    move-object v6, v11

    .line 51
    goto :goto_0

    .line 49
    .end local v6    # "obj":Ljava/lang/Object;
    :cond_2
    iget-object v6, p0, Lmiui/maml/util/JSONPath;->mRootArray:Lorg/json/JSONArray;

    goto :goto_1

    .line 54
    .restart local v6    # "obj":Ljava/lang/Object;
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    :try_start_0
    array-length v12, v9

    if-ge v3, v12, :cond_0

    .line 55
    aget-object v8, v9, v3

    .line 56
    .local v8, "seg":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 54
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 59
    :cond_5
    const/4 v5, -0x1

    .line 60
    .local v5, "index":I
    const-string v12, "["

    invoke-virtual {v8, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 61
    .local v4, "ind":I
    if-eq v4, v14, :cond_6

    .line 62
    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 63
    .local v7, "s":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 64
    const/4 v12, 0x0

    invoke-virtual {v8, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 67
    .end local v7    # "s":Ljava/lang/String;
    :cond_6
    instance-of v12, v6, Lorg/json/JSONObject;

    if-eqz v12, :cond_7

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 68
    move-object v0, v6

    check-cast v0, Lorg/json/JSONObject;

    move-object v10, v0

    .line 69
    .local v10, "tmp":Lorg/json/JSONObject;
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 72
    .end local v10    # "tmp":Lorg/json/JSONObject;
    :cond_7
    instance-of v12, v6, Lorg/json/JSONArray;

    if-eqz v12, :cond_8

    .line 73
    move-object v0, v6

    check-cast v0, Lorg/json/JSONArray;

    move-object v1, v0

    .line 75
    .local v1, "arr":Lorg/json/JSONArray;
    if-eq v5, v14, :cond_0

    .line 77
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 80
    .end local v1    # "arr":Lorg/json/JSONArray;
    :cond_8
    if-eqz v6, :cond_9

    sget-object v12, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v6, v12, :cond_4

    :cond_9
    move-object v6, v11

    .line 81
    goto :goto_0

    .line 85
    .end local v4    # "ind":I
    .end local v5    # "index":I
    .end local v8    # "seg":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 86
    .local v2, "e":Lorg/json/JSONException;
    const-string v12, "JSONPath"

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Lorg/json/JSONException;
    :goto_3
    move-object v6, v11

    .line 91
    goto :goto_0

    .line 87
    :catch_1
    move-exception v2

    .line 88
    .local v2, "e":Ljava/lang/Exception;
    const-string v12, "JSONPath"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
