.class public Lcom/android/server/appwidget/AppWidgetServiceImplInjector;
.super Ljava/lang/Object;
.source "AppWidgetServiceImplInjector.java"


# static fields
.field public static final ENABLED_WIDGETS:Ljava/lang/String; = "enabled_widgets"

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/android/server/appwidget/AppWidgetServiceImplInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appwidget/AppWidgetServiceImplInjector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateWidgetPackagesLocked(Landroid/content/Context;Ljava/util/List;I)V
    .locals 12
    .param p0, "ctx"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "mProviders":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v6

    .line 20
    .local v6, "pkgSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 21
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 22
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 24
    .local v7, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v9

    if-eq v9, p2, :cond_1

    .line 21
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 27
    :cond_1
    iget-object v9, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 28
    iget-object v9, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v9, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 31
    .end local v7    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_2
    const/4 v8, 0x0

    .line 32
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 33
    .local v5, "pkg":Ljava/lang/String;
    if-nez v8, :cond_3

    .line 34
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    :goto_3
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 36
    :cond_3
    const/16 v9, 0x3a

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 40
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 41
    .local v2, "identity":J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "enabled_widgets"

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_4
    invoke-static {v10, v11, v9, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 45
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    return-void

    .line 41
    :cond_5
    const-string v9, ""

    goto :goto_4
.end method
