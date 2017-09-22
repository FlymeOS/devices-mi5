.class Lcom/xiaomi/mipush/sdk/c;
.super Ljava/lang/Object;
.source "AppInfoHolder.java"


# instance fields
.field public aVf:Z

.field public aXG:I

.field public aYt:Ljava/lang/String;

.field public aYu:Ljava/lang/String;

.field public aYv:Ljava/lang/String;

.field public aYw:Ljava/lang/String;

.field final synthetic aYx:Lcom/xiaomi/mipush/sdk/a;

.field public deviceId:Ljava/lang/String;

.field public isValid:Z

.field public regSecret:Ljava/lang/String;

.field public versionName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/xiaomi/mipush/sdk/a;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 139
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/c;->aYx:Lcom/xiaomi/mipush/sdk/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-boolean v1, p0, Lcom/xiaomi/mipush/sdk/c;->isValid:Z

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mipush/sdk/c;->aVf:Z

    .line 158
    iput v1, p0, Lcom/xiaomi/mipush/sdk/c;->aXG:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/mipush/sdk/a;Lcom/xiaomi/mipush/sdk/b;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/c;-><init>(Lcom/xiaomi/mipush/sdk/a;)V

    return-void
.end method

.method private FP()Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->aYx:Lcom/xiaomi/mipush/sdk/a;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/a;->a(Lcom/xiaomi/mipush/sdk/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->aYx:Lcom/xiaomi/mipush/sdk/a;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/a;->a(Lcom/xiaomi/mipush/sdk/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils;->G(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public FO()Z
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->aYt:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->aYu:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/mipush/sdk/c;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public G(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 174
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/c;->aYv:Ljava/lang/String;

    .line 175
    iput-object p2, p0, Lcom/xiaomi/mipush/sdk/c;->regSecret:Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->aYx:Lcom/xiaomi/mipush/sdk/a;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/a;->a(Lcom/xiaomi/mipush/sdk/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/android/a;->di(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->deviceId:Ljava/lang/String;

    .line 177
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/c;->FP()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->versionName:Ljava/lang/String;

    .line 178
    iput-boolean v3, p0, Lcom/xiaomi/mipush/sdk/c;->isValid:Z

    .line 180
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->aYx:Lcom/xiaomi/mipush/sdk/a;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 181
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 182
    const-string v1, "regId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 183
    const-string v1, "regSec"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 184
    const-string v1, "devId"

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/c;->deviceId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 185
    const-string v1, "vName"

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/c;->FP()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 186
    const-string v1, "valid"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 187
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 188
    return-void
.end method

.method public H(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->aYt:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->aYu:Ljava/lang/String;

    .line 192
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->aYv:Ljava/lang/String;

    .line 193
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->regSecret:Ljava/lang/String;

    .line 194
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->deviceId:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->aYx:Lcom/xiaomi/mipush/sdk/a;

    .line 195
    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/a;->a(Lcom/xiaomi/mipush/sdk/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/android/a;->di(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 208
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->aYx:Lcom/xiaomi/mipush/sdk/a;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 209
    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->aYt:Ljava/lang/String;

    .line 210
    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->aYu:Ljava/lang/String;

    .line 211
    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->aYv:Ljava/lang/String;

    .line 212
    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->regSecret:Ljava/lang/String;

    .line 213
    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->deviceId:Ljava/lang/String;

    .line 214
    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->versionName:Ljava/lang/String;

    .line 215
    iput-boolean v2, p0, Lcom/xiaomi/mipush/sdk/c;->isValid:Z

    .line 216
    iput-boolean v2, p0, Lcom/xiaomi/mipush/sdk/c;->aVf:Z

    .line 217
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaomi/mipush/sdk/c;->aXG:I

    .line 218
    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 161
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/c;->aYt:Ljava/lang/String;

    .line 162
    iput-object p2, p0, Lcom/xiaomi/mipush/sdk/c;->aYu:Ljava/lang/String;

    .line 163
    iput-object p3, p0, Lcom/xiaomi/mipush/sdk/c;->aYw:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->aYx:Lcom/xiaomi/mipush/sdk/a;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 166
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 167
    const-string v1, "appId"

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/c;->aYt:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 168
    const-string v1, "appToken"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 169
    const-string v1, "regResource"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 170
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 171
    return-void
.end method

.method public invalidate()V
    .locals 3

    .prologue
    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mipush/sdk/c;->isValid:Z

    .line 230
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->aYx:Lcom/xiaomi/mipush/sdk/a;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 231
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 232
    const-string v1, "valid"

    iget-boolean v2, p0, Lcom/xiaomi/mipush/sdk/c;->isValid:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 233
    return-void
.end method

.method public setPaused(Z)V
    .locals 0

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/xiaomi/mipush/sdk/c;->aVf:Z

    .line 222
    return-void
.end method
