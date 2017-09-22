.class final Lcom/android/vendorsettings/search/d;
.super Landroid/database/ContentObserver;
.source "DynamicIndexableContentMonitor.java"


# instance fields
.field final synthetic aoZ:Lcom/android/vendorsettings/search/b;


# direct methods
.method public constructor <init>(Lcom/android/vendorsettings/search/b;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/vendorsettings/search/d;->aoZ:Lcom/android/vendorsettings/search/b;

    .line 296
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 297
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 301
    sget-object v0, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/vendorsettings/search/d;->aoZ:Lcom/android/vendorsettings/search/b;

    invoke-static {v0}, Lcom/android/vendorsettings/search/b;->a(Lcom/android/vendorsettings/search/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/search/e;->cf(Landroid/content/Context;)Lcom/android/vendorsettings/search/e;

    move-result-object v0

    const-class v1, Lcom/android/vendorsettings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/vendorsettings/search/e;->b(Ljava/lang/String;ZZ)V

    .line 305
    :cond_0
    return-void
.end method
