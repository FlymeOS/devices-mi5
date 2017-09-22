.class Lcom/android/settings/cloud/g;
.super Ljava/lang/Object;
.source "CloudSettingsProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic SO:Ljava/lang/String;

.field final synthetic SP:Ljava/lang/String;

.field final synthetic SQ:Lcom/android/settings/cloud/CloudSettingsProvider;


# direct methods
.method constructor <init>(Lcom/android/settings/cloud/CloudSettingsProvider;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/settings/cloud/g;->SQ:Lcom/android/settings/cloud/CloudSettingsProvider;

    iput-object p2, p0, Lcom/android/settings/cloud/g;->SO:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/cloud/g;->SP:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/settings/cloud/g;->SQ:Lcom/android/settings/cloud/CloudSettingsProvider;

    invoke-virtual {v0}, Lcom/android/settings/cloud/CloudSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/cloud/g;->SO:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/cloud/CloudSettingsProvider;->s(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/cloud/g;->SP:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/cloud/CloudSettingsProvider;->b(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_0

    .line 215
    invoke-static {}, Lcom/android/settings/cloud/CloudSettingsProvider;->og()Ljava/util/Hashtable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/cloud/g;->SO:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_0
    return-void
.end method
