.class Lcom/android/settings/aq;
.super Ljava/lang/Object;
.source "ChildrenModeSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic dl:Lcom/android/settings/ChildrenModeSettings;

.field private final p:Ljava/util/HashMap;

.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Lcom/android/settings/ChildrenModeSettings;)V
    .locals 1

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/settings/aq;->dl:Lcom/android/settings/ChildrenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/aq;->sCollator:Ljava/text/Collator;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/aq;->p:Ljava/util/HashMap;

    return-void
.end method

.method private a(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/aq;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 63
    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/settings/aq;->dl:Lcom/android/settings/ChildrenModeSettings;

    invoke-static {v0}, Lcom/android/settings/ChildrenModeSettings;->a(Lcom/android/settings/ChildrenModeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/android/settings/aq;->p:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_0
    return-object v0
.end method


# virtual methods
.method public compare(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)I
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/aq;->sCollator:Ljava/text/Collator;

    invoke-direct {p0, p1}, Lcom/android/settings/aq;->a(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/android/settings/aq;->a(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 51
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    check-cast p2, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/aq;->compare(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)I

    move-result v0

    return v0
.end method
