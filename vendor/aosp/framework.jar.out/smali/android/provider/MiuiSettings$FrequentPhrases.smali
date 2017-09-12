.class public final Landroid/provider/MiuiSettings$FrequentPhrases;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FrequentPhrases"
.end annotation


# static fields
.field private static final FREQUENT_PHRASES:Ljava/lang/String; = "frequent_phrases"

.field private static final TAG_PHRASES:Ljava/lang/String; = "phrases"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFrequentPhrases(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 4301
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "frequent_phrases"

    invoke-static {v7, v8}, Lmiui/provider/ExtraSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4303
    .local v6, "phraseString":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4329
    :cond_0
    :goto_0
    return-object v5

    .line 4307
    :cond_1
    const/4 v3, 0x0

    .line 4309
    .local v3, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4315
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v7, "phrases"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 4316
    .local v2, "jsonArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 4320
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4321
    .local v5, "phraseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 4322
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 4323
    .local v4, "phrase":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4321
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4310
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "phrase":Ljava/lang/String;
    .end local v5    # "phraseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 4311
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 4326
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "i":I
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "phrase":Ljava/lang/String;
    .restart local v5    # "phraseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public static setFrequentPhrases(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4280
    .local p1, "phraseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 4281
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "frequent_phrases"

    const-string v6, ""

    invoke-static {v4, v5, v6}, Lmiui/provider/ExtraSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4298
    :goto_0
    return-void

    .line 4283
    :cond_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 4284
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 4285
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 4284
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4287
    :cond_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 4289
    .local v3, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v4, "phrases"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4295
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "frequent_phrases"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lmiui/provider/ExtraSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 4290
    :catch_0
    move-exception v0

    .line 4291
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
