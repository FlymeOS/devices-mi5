.class public Lcom/android/vendorsettings/cloud/push/CloudService;
.super Landroid/app/IntentService;
.source "CloudService.java"


# static fields
.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/android/vendorsettings/cloud/push/CloudService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/vendorsettings/cloud/push/CloudService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/android/vendorsettings/cloud/push/CloudService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 61
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v2, v1

    .line 63
    :goto_0
    if-ge v2, v4, :cond_2

    .line 64
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 65
    new-instance v5, Lcom/android/vendorsettings/cloud/push/k;

    invoke-direct {v5}, Lcom/android/vendorsettings/cloud/push/k;-><init>()V

    .line 67
    const-string v6, "pkg_name"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 68
    const-string v7, "message"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 69
    const-string v8, "title"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 70
    const-string v9, "ticker"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 71
    const-string v10, "flag_precise"

    invoke-virtual {v0, v10, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 72
    invoke-virtual {v5, v6}, Lcom/android/vendorsettings/cloud/push/k;->setPackageName(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v5, v7}, Lcom/android/vendorsettings/cloud/push/k;->setMessage(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v5, v8}, Lcom/android/vendorsettings/cloud/push/k;->setTitle(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v5, v9}, Lcom/android/vendorsettings/cloud/push/k;->aQ(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v5, v10}, Lcom/android/vendorsettings/cloud/push/k;->aF(Z)V

    .line 78
    const-string v6, "versions"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 79
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 80
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    move v0, v1

    .line 81
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_0

    .line 82
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 84
    :cond_0
    invoke-virtual {v5, v7}, Lcom/android/vendorsettings/cloud/push/k;->c(Ljava/util/Set;)V

    .line 87
    :cond_1
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 95
    :cond_2
    invoke-direct {p0, p1, v3}, Lcom/android/vendorsettings/cloud/push/CloudService;->c(Landroid/content/Context;Ljava/util/List;)V

    .line 96
    return-void
.end method

.method private b(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 99
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 100
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v2, v1

    .line 101
    :goto_0
    if-ge v2, v4, :cond_2

    .line 102
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 103
    new-instance v5, Lcom/android/vendorsettings/cloud/push/l;

    invoke-direct {v5}, Lcom/android/vendorsettings/cloud/push/l;-><init>()V

    .line 105
    const-string v6, "pkg_name"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 106
    const-string v7, "message"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 107
    const-string v8, "flag_precise"

    invoke-virtual {v0, v8, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 108
    invoke-virtual {v5, v6}, Lcom/android/vendorsettings/cloud/push/l;->setPackageName(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v5, v7}, Lcom/android/vendorsettings/cloud/push/l;->setMessage(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v5, v8}, Lcom/android/vendorsettings/cloud/push/l;->aF(Z)V

    .line 112
    const-string v6, "versions"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 113
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 114
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    move v0, v1

    .line 115
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_0

    .line 116
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 118
    :cond_0
    invoke-virtual {v5, v7}, Lcom/android/vendorsettings/cloud/push/l;->c(Ljava/util/Set;)V

    .line 121
    :cond_1
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 124
    :cond_2
    invoke-static {p1}, Lcom/android/vendorsettings/cloud/push/f;->aN(Landroid/content/Context;)I

    .line 126
    invoke-static {p1, v3}, Lcom/android/vendorsettings/cloud/push/f;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 127
    return-void
.end method

.method private c(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 163
    invoke-static {p1}, Lcom/android/vendorsettings/cloud/push/h;->aP(Landroid/content/Context;)Lcom/android/vendorsettings/cloud/push/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/vendorsettings/cloud/push/h;->w(Ljava/util/List;)V

    .line 164
    return-void
.end method

.method private c(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 130
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v2, v1

    .line 132
    :goto_0
    if-ge v2, v4, :cond_2

    .line 133
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 134
    new-instance v5, Lcom/android/vendorsettings/cloud/push/m;

    invoke-direct {v5}, Lcom/android/vendorsettings/cloud/push/m;-><init>()V

    .line 136
    const-string v6, "pkg_name"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 137
    const-string v7, "message"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 138
    const-string v8, "flag_precise"

    invoke-virtual {v0, v8, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 139
    invoke-virtual {v5, v6}, Lcom/android/vendorsettings/cloud/push/m;->setPackageName(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v5, v7}, Lcom/android/vendorsettings/cloud/push/m;->setMessage(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v5, v8}, Lcom/android/vendorsettings/cloud/push/m;->aF(Z)V

    .line 143
    const-string v6, "versions"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 144
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 145
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    move v0, v1

    .line 146
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_0

    .line 147
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 149
    :cond_0
    invoke-virtual {v5, v7}, Lcom/android/vendorsettings/cloud/push/m;->c(Ljava/util/Set;)V

    .line 152
    :cond_1
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 155
    :cond_2
    invoke-static {p1}, Lcom/android/vendorsettings/cloud/push/f;->aO(Landroid/content/Context;)I

    .line 157
    invoke-static {p1, v3}, Lcom/android/vendorsettings/cloud/push/f;->b(Landroid/content/Context;Ljava/util/List;)V

    .line 159
    invoke-direct {p0, p1, v3}, Lcom/android/vendorsettings/cloud/push/CloudService;->d(Landroid/content/Context;Ljava/util/List;)V

    .line 160
    return-void
.end method

.method private d(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 167
    invoke-static {p1}, Lcom/android/vendorsettings/cloud/push/h;->aP(Landroid/content/Context;)Lcom/android/vendorsettings/cloud/push/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/vendorsettings/cloud/push/h;->x(Ljava/util/List;)V

    .line 168
    return-void
.end method

.method private t(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 36
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 39
    const-string v1, "exist_compatibility"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    invoke-direct {p0, p1, v1}, Lcom/android/vendorsettings/cloud/push/CloudService;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 45
    :cond_0
    const-string v1, "install_compatibility"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    invoke-direct {p0, p1, v1}, Lcom/android/vendorsettings/cloud/push/CloudService;->b(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 51
    :cond_1
    const-string v1, "running_compatibility"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/android/vendorsettings/cloud/push/CloudService;->c(Landroid/content/Context;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_2
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 28
    const-string v0, "push_content"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    invoke-direct {p0, p0, v0}, Lcom/android/vendorsettings/cloud/push/CloudService;->t(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void
.end method
