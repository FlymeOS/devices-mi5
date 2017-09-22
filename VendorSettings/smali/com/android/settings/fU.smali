.class Lcom/android/settings/fU;
.super Ljava/lang/Object;
.source "NotificationAppListSettings.java"


# instance fields
.field private bL:Landroid/content/pm/ApplicationInfo;

.field private bM:Ljava/lang/String;

.field private mLabel:Ljava/lang/String;

.field private mType:I

.field final synthetic vg:Lcom/android/settings/NotificationAppListSettings;

.field private vj:Z


# direct methods
.method public constructor <init>(Lcom/android/settings/NotificationAppListSettings;Landroid/content/pm/ApplicationInfo;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 263
    iput-object p1, p0, Lcom/android/settings/fU;->vg:Lcom/android/settings/NotificationAppListSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fU;->mType:I

    .line 261
    iput-boolean v3, p0, Lcom/android/settings/fU;->vj:Z

    .line 264
    iput-object p2, p0, Lcom/android/settings/fU;->bL:Landroid/content/pm/ApplicationInfo;

    .line 265
    invoke-static {p1}, Lcom/android/settings/NotificationAppListSettings;->f(Lcom/android/settings/NotificationAppListSettings;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\u00A0"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fU;->mLabel:Ljava/lang/String;

    .line 266
    invoke-static {p1}, Lcom/android/settings/NotificationAppListSettings;->d(Lcom/android/settings/NotificationAppListSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/fU;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/android/settings/NotificationAppListSettings;->e(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fU;->bM:Ljava/lang/String;

    .line 267
    iput v3, p0, Lcom/android/settings/fU;->mType:I

    .line 268
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/NotificationAppListSettings;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/settings/fU;->vg:Lcom/android/settings/NotificationAppListSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fU;->mType:I

    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fU;->vj:Z

    .line 271
    iput-object p2, p0, Lcom/android/settings/fU;->mLabel:Ljava/lang/String;

    .line 272
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/fU;->mType:I

    .line 273
    return-void
.end method

.method static synthetic a(Lcom/android/settings/fU;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/settings/fU;->bM:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/fU;)Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/android/settings/fU;->vj:Z

    return v0
.end method

.method static synthetic a(Lcom/android/settings/fU;Z)Z
    .locals 0

    .prologue
    .line 255
    iput-boolean p1, p0, Lcom/android/settings/fU;->vj:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings/fU;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/settings/fU;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/fU;)I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/android/settings/fU;->mType:I

    return v0
.end method

.method static synthetic d(Lcom/android/settings/fU;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/settings/fU;->bM:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public Q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/settings/fU;->bL:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fU;->bL:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_0
.end method
