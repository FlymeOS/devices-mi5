.class public Lcom/android/vendorsettings/voice/b;
.super Ljava/lang/Object;
.source "VoiceInputHelper.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final appLabel:Ljava/lang/CharSequence;

.field public final auV:Landroid/content/pm/ServiceInfo;

.field public final auW:Landroid/content/ComponentName;

.field public final auX:Ljava/lang/String;

.field public final componentName:Landroid/content/ComponentName;

.field public final key:Ljava/lang/String;

.field public final label:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p2, p0, Lcom/android/vendorsettings/voice/b;->auV:Landroid/content/pm/ServiceInfo;

    .line 62
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/vendorsettings/voice/b;->componentName:Landroid/content/ComponentName;

    .line 63
    iget-object v0, p0, Lcom/android/vendorsettings/voice/b;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/voice/b;->key:Ljava/lang/String;

    .line 64
    if-eqz p3, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lcom/android/vendorsettings/voice/b;->auW:Landroid/content/ComponentName;

    .line 66
    invoke-virtual {p2, p1}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/voice/b;->label:Ljava/lang/CharSequence;

    .line 67
    iget-object v0, p0, Lcom/android/vendorsettings/voice/b;->label:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/voice/b;->auX:Ljava/lang/String;

    .line 68
    iget-object v0, p2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/voice/b;->appLabel:Ljava/lang/CharSequence;

    .line 69
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/vendorsettings/voice/b;->auX:Ljava/lang/String;

    check-cast p1, Lcom/android/vendorsettings/voice/b;

    iget-object v1, p1, Lcom/android/vendorsettings/voice/b;->auX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
