.class public Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;
.super Ljava/lang/Object;
.source "Library.java"


# static fields
.field private static final JSON_LIBRARY_CHECKSUM:Ljava/lang/String; = "md5"

.field private static final JSON_ZIP_CHECKSUM:Ljava/lang/String; = "zip"

.field private static final JSON_ZIP_NAME:Ljava/lang/String; = "name"


# instance fields
.field private libraryCheckSum:Ljava/lang/String;

.field private libraryName:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private zipCheckSum:Ljava/lang/String;

.field private zipName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 5
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "baseUrl"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    :try_start_0
    const-string v2, "name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->zipName:Ljava/lang/String;

    .line 22
    const-string v2, "md5"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->libraryCheckSum:Ljava/lang/String;

    .line 23
    const-string/jumbo v2, "zip"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->zipCheckSum:Ljava/lang/String;

    .line 24
    iget-object v2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->zipName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 25
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->libraryName:Ljava/lang/String;

    .line 38
    :goto_0
    return-void

    .line 28
    :cond_0
    iget-object v2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->zipName:Ljava/lang/String;

    invoke-direct {p0, p2, v2}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getUrlBy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->url:Ljava/lang/String;

    .line 29
    iget-object v2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->zipName:Ljava/lang/String;

    const-string v4, ".zip"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 30
    .local v1, "end":I
    if-gez v1, :cond_1

    move-object v2, v3

    :goto_1
    iput-object v2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->libraryName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 31
    .end local v1    # "end":I
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    iput-object v3, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->zipName:Ljava/lang/String;

    .line 34
    iput-object v3, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->libraryName:Ljava/lang/String;

    .line 35
    iput-object v3, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->libraryCheckSum:Ljava/lang/String;

    .line 36
    iput-object v3, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->zipCheckSum:Ljava/lang/String;

    goto :goto_0

    .line 30
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "end":I
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->zipName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_1
.end method

.method private getUrlBy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    if-nez p1, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 47
    :goto_0
    return-object v0

    .line 44
    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getLibraryCheckSum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->libraryCheckSum:Ljava/lang/String;

    return-object v0
.end method

.method public getLibraryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->libraryName:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getZipCheckSum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->zipCheckSum:Ljava/lang/String;

    return-object v0
.end method

.method public getZipName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->zipName:Ljava/lang/String;

    return-object v0
.end method
