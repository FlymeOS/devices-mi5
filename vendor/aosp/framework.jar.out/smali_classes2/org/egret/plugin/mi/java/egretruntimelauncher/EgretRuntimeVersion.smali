.class public Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeVersion;
.super Ljava/lang/Object;
.source "EgretRuntimeVersion.java"


# static fields
.field private static final JSON_LIBRARY:Ljava/lang/String; = "library"

.field private static final JSON_RUNTIME:Ljava/lang/String; = "runtime"

.field private static final JSON_URL:Ljava/lang/String; = "url"


# instance fields
.field private libraryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeVersion;->libraryList:Ljava/util/ArrayList;

    .line 22
    return-void
.end method


# virtual methods
.method public fromString(Ljava/lang/String;)V
    .locals 9
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 25
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    new-instance v7, Lorg/json/JSONTokener;

    invoke-direct {v7, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v7}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 29
    .local v2, "json":Lorg/json/JSONObject;
    const-string v7, "runtime"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 30
    .local v5, "runtime":Lorg/json/JSONObject;
    const-string v7, "url"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 31
    .local v6, "url":Ljava/lang/String;
    const-string v7, "library"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 32
    .local v3, "libs":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 33
    new-instance v8, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    invoke-direct {v8, v7, v6}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    :cond_0
    iput-object v4, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeVersion;->libraryList:Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v1    # "i":I
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "libs":Lorg/json/JSONArray;
    .end local v5    # "runtime":Lorg/json/JSONObject;
    .end local v6    # "url":Ljava/lang/String;
    :goto_1
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public getLibraryList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeVersion;->libraryList:Ljava/util/ArrayList;

    return-object v0
.end method
