.class public Lmiui/maml/MamlConfigSettings;
.super Lmiui/preference/PreferenceActivity;
.source "MamlConfigSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/MamlConfigSettings$ImagePickerItem;,
        Lmiui/maml/MamlConfigSettings$AppPickerItem;,
        Lmiui/maml/MamlConfigSettings$PickerItem;,
        Lmiui/maml/MamlConfigSettings$NumberInputItem;,
        Lmiui/maml/MamlConfigSettings$NumberChoiceItem;,
        Lmiui/maml/MamlConfigSettings$StringChoiceItem;,
        Lmiui/maml/MamlConfigSettings$ValueChoiceItem;,
        Lmiui/maml/MamlConfigSettings$StringInputItem;,
        Lmiui/maml/MamlConfigSettings$CheckboxItem;,
        Lmiui/maml/MamlConfigSettings$VariableItem;,
        Lmiui/maml/MamlConfigSettings$Item;,
        Lmiui/maml/MamlConfigSettings$LockscreenConfigFileHelper;,
        Lmiui/maml/MamlConfigSettings$ConfigFileHelper;
    }
.end annotation


# static fields
.field private static final CONFIG_NAME:Ljava/lang/String; = "config.xml"

.field public static final EXTRA_MAML_CODE:Ljava/lang/String; = "maml_code"

.field public static final EXTRA_MAML_ID:Ljava/lang/String; = "maml_id"

.field public static final EXTRA_MAML_PATH:Ljava/lang/String; = "maml_path"

.field private static final LOG_TAG:Ljava/lang/String; = "MamlConfigSettings"

.field private static final TAG_ROOT:Ljava/lang/String; = "Config"


# instance fields
.field private mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

.field private mNextRequestCode:I

.field private mPreferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/maml/MamlConfigSettings$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestCodeObjMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/MamlConfigSettings;->mPreferenceMap:Ljava/util/HashMap;

    .line 68
    const/16 v0, 0x64

    iput v0, p0, Lmiui/maml/MamlConfigSettings;->mNextRequestCode:I

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/MamlConfigSettings;->mRequestCodeObjMap:Ljava/util/HashMap;

    .line 674
    return-void
.end method

.method static synthetic access$000(Lmiui/maml/MamlConfigSettings;Landroid/preference/PreferenceScreen;Lorg/w3c/dom/Element;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/MamlConfigSettings;
    .param p1, "x1"    # Landroid/preference/PreferenceScreen;
    .param p2, "x2"    # Lorg/w3c/dom/Element;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lmiui/maml/MamlConfigSettings;->createGroup(Landroid/preference/PreferenceScreen;Lorg/w3c/dom/Element;)V

    return-void
.end method

.method static synthetic access$100(Lmiui/maml/MamlConfigSettings;Ljava/lang/String;)Lmiui/maml/MamlConfigSettings$Item;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/MamlConfigSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lmiui/maml/MamlConfigSettings;->createItem(Ljava/lang/String;)Lmiui/maml/MamlConfigSettings$Item;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lmiui/maml/MamlConfigSettings;)Lmiui/maml/MamlConfigSettings$ConfigFileHelper;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/MamlConfigSettings;

    .prologue
    .line 50
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    return-object v0
.end method

.method static synthetic access$1400(Lmiui/maml/MamlConfigSettings;)I
    .locals 1
    .param p0, "x0"    # Lmiui/maml/MamlConfigSettings;

    .prologue
    .line 50
    invoke-direct {p0}, Lmiui/maml/MamlConfigSettings;->getNextRequestCode()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lmiui/maml/MamlConfigSettings;ILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/MamlConfigSettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lmiui/maml/MamlConfigSettings;->putRequestCodeObj(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lmiui/maml/MamlConfigSettings;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/MamlConfigSettings;

    .prologue
    .line 50
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings;->mPreferenceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static containsConfig(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packagePath"    # Ljava/lang/String;

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/maml/MamlConfigSettings;->containsConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static containsConfig(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "packagePath"    # Ljava/lang/String;
    .param p1, "innerPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 248
    if-nez p0, :cond_1

    .line 266
    .end local p1    # "innerPath":Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 251
    .restart local p1    # "innerPath":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .line 253
    .local v2, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .end local v2    # "zipfile":Ljava/util/zip/ZipFile;
    .local v3, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_2

    const-string p1, ""

    .end local p1    # "innerPath":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "config.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "entryName":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    if-eqz v5, :cond_3

    const/4 v4, 0x1

    .line 259
    :cond_3
    if-eqz v3, :cond_0

    .line 261
    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v5

    goto :goto_0

    .line 256
    .end local v1    # "entryName":Ljava/lang/String;
    .end local v3    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v2    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local p1    # "innerPath":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 257
    .end local p1    # "innerPath":Ljava/lang/String;
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 259
    if-eqz v2, :cond_0

    .line 261
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 262
    :catch_2
    move-exception v5

    goto :goto_0

    .line 259
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_4

    .line 261
    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 263
    :cond_4
    :goto_3
    throw v4

    .line 262
    :catch_3
    move-exception v5

    goto :goto_3

    .line 259
    .end local v2    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v3    # "zipfile":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v2    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 256
    .end local v2    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v3    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v2    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_1
.end method

.method public static containsLockstyleConfig()Z
    .locals 2

    .prologue
    .line 270
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    const-string v1, "config.xml"

    invoke-virtual {v0, v1}, Lmiui/content/res/ThemeResourcesSystem;->containsAwesomeLockscreenEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static createConfigFileHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/MamlConfigSettings$ConfigFileHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    .line 203
    const-string v0, "lockstyle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-static {p0, p1}, Lmiui/maml/MamlConfigSettings;->getComponentId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 207
    :cond_0
    new-instance v0, Lmiui/maml/MamlConfigSettings$LockscreenConfigFileHelper;

    invoke-direct {v0, p3}, Lmiui/maml/MamlConfigSettings$LockscreenConfigFileHelper;-><init>(Ljava/lang/String;)V

    .line 209
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    invoke-direct {v0, p2}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createGroup(Landroid/preference/PreferenceScreen;Lorg/w3c/dom/Element;)V
    .locals 3
    .param p1, "rootScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "group"    # Lorg/w3c/dom/Element;

    .prologue
    .line 316
    if-nez p2, :cond_0

    .line 333
    :goto_0
    return-void

    .line 319
    :cond_0
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 320
    .local v0, "category":Landroid/preference/PreferenceCategory;
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 321
    const-string v1, "text"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 322
    const-string v1, "summary"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setSummary(Ljava/lang/CharSequence;)V

    .line 324
    const/4 v1, 0x0

    new-instance v2, Lmiui/maml/MamlConfigSettings$2;

    invoke-direct {v2, p0, v0}, Lmiui/maml/MamlConfigSettings$2;-><init>(Lmiui/maml/MamlConfigSettings;Landroid/preference/PreferenceCategory;)V

    invoke-static {p2, v1, v2}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    goto :goto_0
.end method

.method private createItem(Ljava/lang/String;)Lmiui/maml/MamlConfigSettings$Item;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 336
    const-string v0, "StringInput"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    new-instance v0, Lmiui/maml/MamlConfigSettings$StringInputItem;

    invoke-direct {v0, p0, v1}, Lmiui/maml/MamlConfigSettings$StringInputItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$1;)V

    .line 351
    :goto_0
    return-object v0

    .line 338
    :cond_0
    const-string v0, "CheckBox"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    new-instance v0, Lmiui/maml/MamlConfigSettings$CheckboxItem;

    invoke-direct {v0, p0, v1}, Lmiui/maml/MamlConfigSettings$CheckboxItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$1;)V

    goto :goto_0

    .line 340
    :cond_1
    const-string v0, "NumberInput"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 341
    new-instance v0, Lmiui/maml/MamlConfigSettings$NumberInputItem;

    invoke-direct {v0, p0, v1}, Lmiui/maml/MamlConfigSettings$NumberInputItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$1;)V

    goto :goto_0

    .line 342
    :cond_2
    const-string v0, "StringChoice"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 343
    new-instance v0, Lmiui/maml/MamlConfigSettings$StringChoiceItem;

    invoke-direct {v0, p0, v1}, Lmiui/maml/MamlConfigSettings$StringChoiceItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$1;)V

    goto :goto_0

    .line 344
    :cond_3
    const-string v0, "NumberChoice"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 345
    new-instance v0, Lmiui/maml/MamlConfigSettings$NumberChoiceItem;

    invoke-direct {v0, p0, v1}, Lmiui/maml/MamlConfigSettings$NumberChoiceItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$1;)V

    goto :goto_0

    .line 346
    :cond_4
    const-string v0, "AppPicker"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 347
    new-instance v0, Lmiui/maml/MamlConfigSettings$AppPickerItem;

    invoke-direct {v0, p0, v1}, Lmiui/maml/MamlConfigSettings$AppPickerItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$1;)V

    goto :goto_0

    .line 348
    :cond_5
    const-string v0, "ImagePicker"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 349
    new-instance v0, Lmiui/maml/MamlConfigSettings$ImagePickerItem;

    invoke-direct {v0, p0, v1}, Lmiui/maml/MamlConfigSettings$ImagePickerItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$1;)V

    goto :goto_0

    :cond_6
    move-object v0, v1

    .line 351
    goto :goto_0
.end method

.method private createPreferenceScreen()V
    .locals 9

    .prologue
    .line 274
    invoke-virtual {p0}, Lmiui/maml/MamlConfigSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 275
    .local v6, "rootScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0, v6}, Lmiui/maml/MamlConfigSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 277
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 278
    .local v1, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v0, 0x0

    .line 279
    .local v0, "db":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v4, 0x0

    .line 281
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 282
    iget-object v7, p0, Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    invoke-virtual {p0}, Lmiui/maml/MamlConfigSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->getConfigFileStream(Ljava/util/Locale;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 283
    if-nez v4, :cond_1

    .line 308
    if-eqz v4, :cond_0

    .line 309
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    :try_start_2
    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 286
    .local v2, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 287
    .local v5, "root":Lorg/w3c/dom/Element;
    if-nez v5, :cond_2

    .line 308
    if-eqz v4, :cond_0

    .line 309
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 310
    :catch_0
    move-exception v7

    goto :goto_0

    .line 289
    :cond_2
    :try_start_4
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Config"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v7

    if-nez v7, :cond_3

    .line 308
    if-eqz v4, :cond_0

    .line 309
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 310
    :catch_1
    move-exception v7

    goto :goto_0

    .line 292
    :cond_3
    :try_start_6
    const-string v7, "Group"

    new-instance v8, Lmiui/maml/MamlConfigSettings$1;

    invoke-direct {v8, p0, v6}, Lmiui/maml/MamlConfigSettings$1;-><init>(Lmiui/maml/MamlConfigSettings;Landroid/preference/PreferenceScreen;)V

    invoke-static {v5, v7, v8}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V
    :try_end_6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 308
    if-eqz v4, :cond_0

    .line 309
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 310
    :catch_2
    move-exception v7

    goto :goto_0

    .line 298
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "root":Lorg/w3c/dom/Element;
    :catch_3
    move-exception v3

    .line 299
    .local v3, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_8
    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 308
    if-eqz v4, :cond_0

    .line 309
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_0

    .line 310
    :catch_4
    move-exception v7

    goto :goto_0

    .line 300
    .end local v3    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_5
    move-exception v3

    .line 301
    .local v3, "e":Lorg/xml/sax/SAXException;
    :try_start_a
    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 308
    if-eqz v4, :cond_0

    .line 309
    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_0

    .line 310
    :catch_6
    move-exception v7

    goto :goto_0

    .line 302
    .end local v3    # "e":Lorg/xml/sax/SAXException;
    :catch_7
    move-exception v3

    .line 303
    .local v3, "e":Ljava/io/IOException;
    :try_start_c
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 308
    if-eqz v4, :cond_0

    .line 309
    :try_start_d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_0

    .line 310
    :catch_8
    move-exception v7

    goto :goto_0

    .line 304
    .end local v3    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v3

    .line 305
    .local v3, "e":Ljava/lang/Exception;
    :try_start_e
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 308
    if-eqz v4, :cond_0

    .line 309
    :try_start_f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    goto :goto_0

    .line 310
    :catch_a
    move-exception v7

    goto :goto_0

    .line 307
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 308
    if-eqz v4, :cond_4

    .line 309
    :try_start_10
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    .line 311
    :cond_4
    :goto_1
    throw v7

    .line 310
    :catch_b
    move-exception v7

    goto :goto_0

    :catch_c
    move-exception v8

    goto :goto_1
.end method

.method public static getComponentId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 761
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 762
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "local_id"

    aput-object v1, v2, v7

    .line 765
    .local v2, "projection":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.android.thememanager.provider/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 767
    .local v6, "cs":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 768
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 769
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 770
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 773
    :cond_0
    return-object v3
.end method

.method private getNextRequestCode()I
    .locals 2

    .prologue
    .line 709
    iget v0, p0, Lmiui/maml/MamlConfigSettings;->mNextRequestCode:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmiui/maml/MamlConfigSettings;->mNextRequestCode:I

    return v0
.end method

.method private getRequestCodeObj(I)Ljava/lang/Object;
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 717
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings;->mRequestCodeObjMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private putRequestCodeObj(ILjava/lang/Object;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 713
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings;->mRequestCodeObjMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 736
    invoke-direct {p0, p1}, Lmiui/maml/MamlConfigSettings;->getRequestCodeObj(I)Ljava/lang/Object;

    move-result-object v1

    .line 737
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 738
    instance-of v2, v1, Lmiui/maml/MamlConfigSettings$PickerItem;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 739
    check-cast v0, Lmiui/maml/MamlConfigSettings$PickerItem;

    .line 740
    .local v0, "item":Lmiui/maml/MamlConfigSettings$PickerItem;
    invoke-virtual {v0, p2, p3}, Lmiui/maml/MamlConfigSettings$PickerItem;->onActivityResult(ILandroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 741
    iget-object v2, p0, Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    invoke-virtual {v2}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->save()V

    .line 745
    .end local v0    # "item":Lmiui/maml/MamlConfigSettings$PickerItem;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 183
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 184
    invoke-virtual {p0}, Lmiui/maml/MamlConfigSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "maml_code"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "code":Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/maml/MamlConfigSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "maml_path"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "mamlPath":Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/maml/MamlConfigSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "maml_id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "mamlId":Ljava/lang/String;
    invoke-static {p0, v0, v2, v1}, Lmiui/maml/MamlConfigSettings;->createConfigFileHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    .line 189
    iget-object v3, p0, Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    const-string v4, "config.xml"

    invoke-virtual {v3, v4}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->containsFile(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 190
    invoke-virtual {p0}, Lmiui/maml/MamlConfigSettings;->finish()V

    .line 200
    :goto_0
    return-void

    .line 194
    :cond_0
    const v3, 0x11030004

    invoke-virtual {p0, v3}, Lmiui/maml/MamlConfigSettings;->setContentView(I)V

    .line 196
    invoke-virtual {p0}, Lmiui/maml/MamlConfigSettings;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v3

    const v4, 0x110700b6

    invoke-virtual {v3, v4}, Lmiui/app/ActionBar;->setTitle(I)V

    .line 197
    invoke-virtual {p0}, Lmiui/maml/MamlConfigSettings;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmiui/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 199
    invoke-direct {p0}, Lmiui/maml/MamlConfigSettings;->createPreferenceScreen()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    invoke-virtual {v0}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->save()V

    .line 230
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    invoke-virtual {v0}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->close()V

    .line 231
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    .line 232
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 215
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 216
    invoke-virtual {p0}, Lmiui/maml/MamlConfigSettings;->finish()V

    .line 218
    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 223
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onPause()V

    .line 224
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    invoke-virtual {v0}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->save()V

    .line 225
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 722
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 723
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lmiui/maml/MamlConfigSettings;->mPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/MamlConfigSettings$Item;

    .line 724
    .local v0, "item":Lmiui/maml/MamlConfigSettings$Item;
    if-nez v0, :cond_1

    .line 725
    const/4 v2, 0x0

    .line 731
    :cond_0
    :goto_0
    return v2

    .line 727
    :cond_1
    invoke-virtual {v0, p2}, Lmiui/maml/MamlConfigSettings$Item;->OnValueChange(Ljava/lang/Object;)Z

    move-result v2

    .line 728
    .local v2, "ret":Z
    if-eqz v2, :cond_0

    .line 729
    iget-object v3, p0, Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    invoke-virtual {v3}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->save()V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 749
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 750
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lmiui/maml/MamlConfigSettings;->mPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/MamlConfigSettings$Item;

    .line 751
    .local v0, "item":Lmiui/maml/MamlConfigSettings$Item;
    if-nez v0, :cond_0

    .line 752
    const/4 v2, 0x0

    .line 754
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Lmiui/maml/MamlConfigSettings$Item;->onClick()Z

    move-result v2

    goto :goto_0
.end method
