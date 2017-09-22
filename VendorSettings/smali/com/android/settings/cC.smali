.class Lcom/android/vendorsettings/cC;
.super Ljava/lang/Object;
.source "DreamBackend.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final ma:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p1, p0, Lcom/android/vendorsettings/cC;->ma:Landroid/content/ComponentName;

    .line 296
    return-void
.end method

.method private b(Lcom/android/vendorsettings/cB;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    iget-object v0, p1, Lcom/android/vendorsettings/cB;->componentName:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/vendorsettings/cC;->ma:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x30

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 306
    iget-object v0, p1, Lcom/android/vendorsettings/cB;->lX:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 305
    :cond_0
    const/16 v0, 0x31

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/vendorsettings/cB;Lcom/android/vendorsettings/cB;)I
    .locals 2

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/cC;->b(Lcom/android/vendorsettings/cB;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/vendorsettings/cC;->b(Lcom/android/vendorsettings/cB;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 291
    check-cast p1, Lcom/android/vendorsettings/cB;

    check-cast p2, Lcom/android/vendorsettings/cB;

    invoke-virtual {p0, p1, p2}, Lcom/android/vendorsettings/cC;->a(Lcom/android/vendorsettings/cB;Lcom/android/vendorsettings/cB;)I

    move-result v0

    return v0
.end method
