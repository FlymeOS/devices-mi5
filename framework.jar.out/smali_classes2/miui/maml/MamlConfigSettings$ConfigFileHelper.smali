.class Lmiui/maml/MamlConfigSettings$ConfigFileHelper;
.super Ljava/lang/Object;
.source "MamlConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/MamlConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigFileHelper"
.end annotation


# instance fields
.field private mCode:Ljava/lang/String;

.field protected mConfigFile:Lmiui/maml/util/ConfigFile;

.field private mPath:Ljava/lang/String;

.field private mZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "mamlPath"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mPath:Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 85
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    iget-object v2, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_0
    new-instance v1, Lmiui/maml/util/ConfigFile;

    invoke-direct {v1}, Lmiui/maml/util/ConfigFile;-><init>()V

    iput-object v1, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mConfigFile:Lmiui/maml/util/ConfigFile;

    .line 91
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mConfigFile:Lmiui/maml/util/ConfigFile;

    invoke-virtual {p0}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->getConfigPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/maml/util/ConfigFile;->load(Ljava/lang/String;)Z

    .line 92
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 138
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_0

    .line 140
    :try_start_0
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public containsFile(Ljava/lang/String;)Z
    .locals 2
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 113
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mZipFile:Ljava/util/zip/ZipFile;

    if-nez v1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getConfigFile()Lmiui/maml/util/ConfigFile;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mConfigFile:Lmiui/maml/util/ConfigFile;

    return-object v0
.end method

.method public getConfigFileStream(Ljava/util/Locale;)Ljava/io/InputStream;
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "is":Ljava/io/InputStream;
    if-eqz p1, :cond_1

    .line 101
    const-string v1, "config.xml"

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->getFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 109
    :goto_0
    return-object v1

    .line 104
    :cond_0
    const-string v1, "config.xml"

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->getFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 106
    goto :goto_0

    .line 109
    :cond_1
    const-string v1, "config.xml"

    invoke-virtual {p0, v1}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->getFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method

.method public getConfigPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFileStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v2, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mZipFile:Ljava/util/zip/ZipFile;

    if-nez v2, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-object v1

    .line 123
    :cond_1
    iget-object v2, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v2, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 124
    .local v0, "ze":Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method

.method public save()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mConfigFile:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v0}, Lmiui/maml/util/ConfigFile;->save()Z

    .line 135
    return-void
.end method
